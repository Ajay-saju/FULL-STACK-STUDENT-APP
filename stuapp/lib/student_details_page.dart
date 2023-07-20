import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:protos/protos.dart';
import 'package:protos/src/generated/student_details.pbgrpc.dart' as stDetails;

class StudentDetailsPage extends StatefulWidget {
  final int id;
  final StudentServiceClient client;
  const StudentDetailsPage({super.key, required this.id, required this.client});

  @override
  State<StudentDetailsPage> createState() => _StudentDetailsPageState();
}

class _StudentDetailsPageState extends State<StudentDetailsPage> {
  ReadStudentResponse? studentData;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final depController = TextEditingController();
  List<int> imageData = [];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    getStudentDetails();
  }

  getStudentDetails() async {
    setState(() {
      _isLoading = true;
    });

    studentData = await widget.client
        .readStudent(stDetails.ReadStudentRequest()..id = widget.id);
    print(studentData.toString());
    nameController.text = studentData!.student.name;
    emailController.text = studentData!.student.emai;
    depController.text = studentData!.student.dipartment;
    imageData = studentData!.student.imageData;

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading == true || studentData!.student.name.isEmpty
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(studentData!.student.name),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: MemoryImage(Uint8List.fromList(
                                studentData!.student.imageData)),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: InkWell(
                                onTap: () async {
                                  imageData = await pickImage();
                                },
                                child: const Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              )),
                        ],
                      ),
                      Text(studentData!.student.id.toString()),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: editigTextField(
                            nameController, 'Edit your name', 'John Doe'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: editigTextField(emailController,
                            'Edit your email', 'exampl@gmail.com'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: editigTextField(
                            depController, 'Edit your dep', 'CS'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            await updateUserDetails(
                                nameController.text,
                                emailController.text,
                                depController.text,
                                imageData,
                                studentData!.student.id);
                          },
                          child: const Text('Update'))
                    ]),
              ),
            ),
          );
  }

  TextFormField editigTextField(
      TextEditingController controller, String label, String hint) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label, // Label text
        hintText: hint, // Placeholder text
        border: const OutlineInputBorder(), // Border around the field
        filled: true, // Fill the field with a background color
        fillColor: Colors.grey[200], // Background color
      ),
      controller: controller,
    );
  }

    updateUserDetails(String name, String email, String dep, List<int> imageData,
      int id) async {
    final request =
     stDetails.UpdateStudentRequest()
      ..student = (Student()
        ..id = id
        ..name = name
        ..emai = email
        ..dipartment = dep
        ..imageData = imageData);
        print(request);
    try {
      final response = await widget.client.updateStudent(request);
      if (response.sucess == true) {
        print('data updated');
        Navigator.pop(context);
        print(response.toString());
      } else {
        print(response.toString());
        print('failed.');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<int>> pickImage() async {
    List<int> imageBytes = [];
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      File imageFile = File(pickedImage.path);
      imageBytes = await imageFile.readAsBytes();
    }
    return imageBytes;
  }
}
