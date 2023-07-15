import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:protos/protos.dart';
import 'package:protos/src/generated/student_details.pbgrpc.dart' as stDetails;
class AddStudentPage extends StatefulWidget {
  
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final departmentController = TextEditingController();
  final picker = ImagePicker();

  late ClientChannel _channel;
  late StudentServiceClient _client;
  Student? _student;
  @override
  void initState() {
    super.initState();
    _channel = ClientChannel('192.168.29.150',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    _client = StudentServiceClient(_channel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('Add Student Details'),
      ),
      body: Column(
        children: [
          customeTextFields(
            controller: nameController,
            hintText: 'Enter Student Name',
            icon: Icons.person_rounded,
          ),
          customeTextFields(
              controller: departmentController,
              hintText: 'Department',
              icon: Icons.book_rounded),
          customeTextFields(
              controller: emailController,
              hintText: 'Email',
              icon: Icons.email_rounded),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                final pickedImage =
                    await picker.pickImage(source: ImageSource.gallery);

                if (pickedImage != null) {
                  File selectedImage = File(pickedImage.path);
                }
              },
              child: const Text('Select an image')),
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            addStudentsDetils();
          },
          child: const Text('Save All Details')),
    );
  }

  Padding customeTextFields(
      {required TextEditingController controller,
      required String hintText,
      required IconData icon}) {
    return Padding(
        padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
        child: TextField(
          controller: controller,
          // onEditingComplete: () {
          //   homeScreenController.handleSearch();
          // },
          cursorColor: Colors.black,
          style: const TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            //  border: InputBorder.none,
            filled: true,
            fillColor: Colors.white.withOpacity(0.5),
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(13.0),
            ),
          ),
        ));
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      File selectedImage = File(pickedImage.path);
    }
  }

  void addStudentsDetils() async {
    final request = stDetails.CreateStudentRequest()
      ..student = (Student()
        ..name = 'John Doe'
        ..dipartment = 'Computer Science'
        ..emai = 'johndoe@example.com');
    try {
      final response = await _client.createStudent(request);
      // print(response.headers.toString());
      print(response.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
