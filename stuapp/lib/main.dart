import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:protos/protos.dart';
import 'package:stuapp/add_student.dart';
import 'package:protos/src/generated/student_details.pbgrpc.dart' as stDetails;
import 'package:stuapp/student_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutterg RPC Demo Student App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ClientChannel _channel;
  late StudentServiceClient _stb;
  Student? _student;
  GetStudentListResponse? studentList;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    _channel = ClientChannel('192.168.29.150',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    _stb = StudentServiceClient(_channel);
    _getStudentsList();
  }

  void _getStudentsList() async {
    setState(() {
      _isLoading = true;
    });

    studentList =
        await _stb.getAllStudentDetails(stDetails.GetStudentListRequest());

    setState(() {
      _isLoading = false;
    });
    print(studentList.toString());
  }

  Uint8List getStudentImage(List<int> imageBytes) {
    Uint8List uint8List = Uint8List.fromList(imageBytes);
    // MemoryImage memoryImage = await MemoryImage(uint8List);

    return uint8List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: _isLoading == true || studentList!.studentslist.isEmpty
              ? const Center(
                  child: Text('Student Empty'),
                )
              : ListView.builder(
                  itemBuilder: (ctx, index) {
                    Uint8List imageBytes = Uint8List.fromList(
                        studentList!.studentslist[index].imageData);
                    return ListTile(
                      title: Text(studentList!.studentslist[index].name),
                      leading: CircleAvatar(
                          backgroundImage: MemoryImage(imageBytes)),
                      trailing: InkWell(
                          onTap: () {
                            showDialog(
                                context: (context),
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Delete Item'),
                                    content: Text(
                                        'Are you sure you want to delete this item?'),
                                    actions: [
                                      // Delete Button
                                      TextButton(
                                        onPressed: () {
                                          deleteStudent(studentList!.studentslist[index].id);
                                          // Perform the delete operation here.
                                          // For demo purposes, we'll just close the dialog.
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Delete'),
                                        style: TextButton.styleFrom(
                                          primary: Colors
                                              .red, // Set the text color to red
                                        ),
                                      ),
                                      // Cancel Button
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Close the dialog
                                        },
                                        child: Text('Cancel'),
                                      ),
                                    ],
                                  );
                                });
                            // 
                          },
                          child: Icon(Icons.delete)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => StudentDetailsPage(
                                  id: studentList!.studentslist[index].id,
                                  client: _stb,
                                )));
                      },
                    );
                  },
                  itemCount: studentList!.studentslist.length,
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddStudentPage(
                    stb: _stb,
                  )));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void deleteStudent(int id) async {
    _stb.deleteStudent(stDetails.DeleteStudentRequest()..id = id);
  }
}
