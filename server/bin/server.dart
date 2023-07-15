import 'dart:io';
import 'package:protos/protos.dart';
import 'package:server/server.dart' as server;

import 'student_service.dart';

void main(List<String> arguments) async{
 
//  final server =Server([StudentService()]);
 final server = Server.create(services: [
  StudentService()
 ]);
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  await server.serve(
    port: port,
  );

  print('Server listening on port ${server.port}...');
}
