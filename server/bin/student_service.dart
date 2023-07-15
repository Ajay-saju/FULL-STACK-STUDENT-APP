import 'package:protos/protos.dart';

class StudentService extends StudentServiceBase {
  // @override
  // Future<Student> getStudent(
  //     ServiceCall call, GetStudentByIdRequest request) async {
  //   final student_details = Student();
  //   return student_details;
  // }
  int maxStudentId = 0;
  bool isCreated = false;
  bool isDeleted = false;
  bool isRead = false;
  bool isUpdated = false;
   List<Student> myStudentDetails = [];
  // void cretingAStudentObj() {
  //   final obj = Student();
  //   obj.name = 'ajay';
  //   obj.dipartment = 'cs';
  //   obj.emai = 'ajaysaju@123';
  //   obj.imageData = [123456789];
  //   myStudentDetails.add(obj);
  // }

 
  @override
  Future<CreateStudentResponse> createStudent(
      ServiceCall call, CreateStudentRequest request) async {
        // cretingAStudentObj();
    maxStudentId++;
    int newStudentId = maxStudentId;

    var student = request.student;
    var createStudent = Student()
      ..id = newStudentId
      ..name = student.name
      ..emai = student.emai
      ..dipartment = student.dipartment
      ..imageData = student.imageData;

    myStudentDetails.add(createStudent);
    bool isCreated = myStudentDetails.contains(createStudent);

    return CreateStudentResponse()
      ..id = createStudent.id
      ..msg = isCreated == true
          ? "Student created Successfully"
          : "Something failed to create";
  }

  @override
  Future<DeleteStudentResponse> deleteStudent(
      ServiceCall call, DeleteStudentRequest request) async {
    var studentId = request.id;

    Student? removeStudent;

    for (var studen in myStudentDetails) {
      if (studen.id == studentId) {
        removeStudent = studen;
        break;
      }
    }

    if (removeStudent != null) {
      myStudentDetails.remove(removeStudent);
      isDeleted = true;
    }
    return DeleteStudentResponse()..sucess = isDeleted;
  }

  @override
  Future<ReadStudentResponse> readStudent(
      ServiceCall call, ReadStudentRequest request) async {
    Student? temp;
    var studentId = request.id;
    for (var student in myStudentDetails) {
      if (student.id == studentId) {
        temp = student;
        isRead = true;
      }
    }
    return ReadStudentResponse()
      ..student = temp!
      ..msg = isRead;
  }

  @override
  Future<UpdateStudentResponse> updateStudent(
      ServiceCall call, UpdateStudentRequest request) async {
    var studentId = request.id;
    for (var student in myStudentDetails) {
      if (student.id == studentId) {
        myStudentDetails[student.id] = request.student;
        isUpdated = true;
      }
    }
    return UpdateStudentResponse()..sucess = isUpdated;
  }

  @override
  Future<GetStudentListResponse> getAllStudentDetails(
      ServiceCall call, GetStudentListRequest request) async {
    GetStudentListResponse response = GetStudentListResponse()
      ..studentslist.addAll(myStudentDetails);
    return response;
  }
}
