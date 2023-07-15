
import 'package:flutter/material.dart';
import 'package:protos/protos.dart';
import 'package:stuapp/add_student.dart';
import 'package:protos/src/generated/student_details.pbgrpc.dart' as stDetails;

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
    var data = await _stb.getAllStudentDetails(stDetails.GetStudentListRequest());
    print(data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _student != null
                ? Text(_student!.name)
                : const Text('Student Empty'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddStudentPage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
