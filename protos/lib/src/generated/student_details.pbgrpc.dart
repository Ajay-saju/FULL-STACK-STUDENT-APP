//
//  Generated code. Do not modify.
//  source: student_details.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'student_details.pb.dart' as $0;

export 'student_details.pb.dart';

@$pb.GrpcServiceName('StudentService')
class StudentServiceClient extends $grpc.Client {
  static final _$getAllStudentDetails = $grpc.ClientMethod<$0.GetStudentListRequest, $0.GetStudentListResponse>(
      '/StudentService/GetAllStudentDetails',
      ($0.GetStudentListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStudentListResponse.fromBuffer(value));
  static final _$createStudent = $grpc.ClientMethod<$0.CreateStudentRequest, $0.CreateStudentResponse>(
      '/StudentService/CreateStudent',
      ($0.CreateStudentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateStudentResponse.fromBuffer(value));
  static final _$readStudent = $grpc.ClientMethod<$0.ReadStudentRequest, $0.ReadStudentResponse>(
      '/StudentService/ReadStudent',
      ($0.ReadStudentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadStudentResponse.fromBuffer(value));
  static final _$updateStudent = $grpc.ClientMethod<$0.UpdateStudentRequest, $0.UpdateStudentResponse>(
      '/StudentService/UpdateStudent',
      ($0.UpdateStudentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateStudentResponse.fromBuffer(value));
  static final _$deleteStudent = $grpc.ClientMethod<$0.DeleteStudentRequest, $0.DeleteStudentResponse>(
      '/StudentService/DeleteStudent',
      ($0.DeleteStudentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteStudentResponse.fromBuffer(value));

  StudentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetStudentListResponse> getAllStudentDetails($0.GetStudentListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllStudentDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateStudentResponse> createStudent($0.CreateStudentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStudent, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadStudentResponse> readStudent($0.ReadStudentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readStudent, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateStudentResponse> updateStudent($0.UpdateStudentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStudent, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteStudentResponse> deleteStudent($0.DeleteStudentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStudent, request, options: options);
  }
}

@$pb.GrpcServiceName('StudentService')
abstract class StudentServiceBase extends $grpc.Service {
  $core.String get $name => 'StudentService';

  StudentServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetStudentListRequest, $0.GetStudentListResponse>(
        'GetAllStudentDetails',
        getAllStudentDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStudentListRequest.fromBuffer(value),
        ($0.GetStudentListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateStudentRequest, $0.CreateStudentResponse>(
        'CreateStudent',
        createStudent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateStudentRequest.fromBuffer(value),
        ($0.CreateStudentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadStudentRequest, $0.ReadStudentResponse>(
        'ReadStudent',
        readStudent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadStudentRequest.fromBuffer(value),
        ($0.ReadStudentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateStudentRequest, $0.UpdateStudentResponse>(
        'UpdateStudent',
        updateStudent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateStudentRequest.fromBuffer(value),
        ($0.UpdateStudentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteStudentRequest, $0.DeleteStudentResponse>(
        'DeleteStudent',
        deleteStudent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteStudentRequest.fromBuffer(value),
        ($0.DeleteStudentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetStudentListResponse> getAllStudentDetails_Pre($grpc.ServiceCall call, $async.Future<$0.GetStudentListRequest> request) async {
    return getAllStudentDetails(call, await request);
  }

  $async.Future<$0.CreateStudentResponse> createStudent_Pre($grpc.ServiceCall call, $async.Future<$0.CreateStudentRequest> request) async {
    return createStudent(call, await request);
  }

  $async.Future<$0.ReadStudentResponse> readStudent_Pre($grpc.ServiceCall call, $async.Future<$0.ReadStudentRequest> request) async {
    return readStudent(call, await request);
  }

  $async.Future<$0.UpdateStudentResponse> updateStudent_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateStudentRequest> request) async {
    return updateStudent(call, await request);
  }

  $async.Future<$0.DeleteStudentResponse> deleteStudent_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteStudentRequest> request) async {
    return deleteStudent(call, await request);
  }

  $async.Future<$0.GetStudentListResponse> getAllStudentDetails($grpc.ServiceCall call, $0.GetStudentListRequest request);
  $async.Future<$0.CreateStudentResponse> createStudent($grpc.ServiceCall call, $0.CreateStudentRequest request);
  $async.Future<$0.ReadStudentResponse> readStudent($grpc.ServiceCall call, $0.ReadStudentRequest request);
  $async.Future<$0.UpdateStudentResponse> updateStudent($grpc.ServiceCall call, $0.UpdateStudentRequest request);
  $async.Future<$0.DeleteStudentResponse> deleteStudent($grpc.ServiceCall call, $0.DeleteStudentRequest request);
}
