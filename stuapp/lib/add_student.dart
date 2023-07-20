import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:protos/protos.dart';
import 'package:protos/src/generated/student_details.pbgrpc.dart' as stDetails;

class AddStudentPage extends StatefulWidget {
  final StudentServiceClient stb;

  const AddStudentPage({
    super.key, 
    required this.stb,
  });

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final departmentController = TextEditingController();
  final picker = ImagePicker();
  List<int> image = [];

  // late ClientChannel _channel;
  // late StudentServiceClient _client;
  // Student? _student;
  @override
  void initState() {
    super.initState();
    // _channel = ClientChannel('192.168.29.150',
    //     port: 8080,
    //     options:
    //         const ChannelOptions(credentials: ChannelCredentials.insecure()));
    // _client = StudentServiceClient(_channel);
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
                image = await pickImage();
              },
              child: const Text('Select an image')),
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            addStudentsDetils(
                name: nameController.text,
                department: departmentController.text,
                email: emailController.text,
                imageData: image);
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

  void addStudentsDetils(
      {required String name,
      required String department,
      required String email,
      required List<int> imageData}) async {
    final request = stDetails.CreateStudentRequest()
      ..student = (Student()
        ..name = name
        ..dipartment = department
        ..emai = email
        ..imageData = imageData);
    try {
      final response = await widget.stb.createStudent(request);
      if(response.msg=='Student created Successfully'){
        Navigator.pop(context);
      }
      print(response.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
