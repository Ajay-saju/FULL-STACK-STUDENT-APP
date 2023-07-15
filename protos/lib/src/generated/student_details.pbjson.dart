//
//  Generated code. Do not modify.
//  source: student_details.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use studentDescriptor instead')
const Student$json = {
  '1': 'Student',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'dipartment', '3': 3, '4': 1, '5': 9, '10': 'dipartment'},
    {'1': 'emai', '3': 4, '4': 1, '5': 9, '10': 'emai'},
    {'1': 'image_data', '3': 5, '4': 1, '5': 12, '10': 'imageData'},
  ],
};

/// Descriptor for `Student`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentDescriptor = $convert.base64Decode(
    'CgdTdHVkZW50Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh4KCmRpcGFydG'
    '1lbnQYAyABKAlSCmRpcGFydG1lbnQSEgoEZW1haRgEIAEoCVIEZW1haRIdCgppbWFnZV9kYXRh'
    'GAUgASgMUglpbWFnZURhdGE=');

@$core.Deprecated('Use getStudentListRequestDescriptor instead')
const GetStudentListRequest$json = {
  '1': 'GetStudentListRequest',
};

/// Descriptor for `GetStudentListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStudentListRequestDescriptor = $convert.base64Decode(
    'ChVHZXRTdHVkZW50TGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use getStudentListResponseDescriptor instead')
const GetStudentListResponse$json = {
  '1': 'GetStudentListResponse',
  '2': [
    {'1': 'studentslist', '3': 1, '4': 3, '5': 11, '6': '.Student', '10': 'studentslist'},
  ],
};

/// Descriptor for `GetStudentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStudentListResponseDescriptor = $convert.base64Decode(
    'ChZHZXRTdHVkZW50TGlzdFJlc3BvbnNlEiwKDHN0dWRlbnRzbGlzdBgBIAMoCzIILlN0dWRlbn'
    'RSDHN0dWRlbnRzbGlzdA==');

@$core.Deprecated('Use createStudentRequestDescriptor instead')
const CreateStudentRequest$json = {
  '1': 'CreateStudentRequest',
  '2': [
    {'1': 'student', '3': 1, '4': 1, '5': 11, '6': '.Student', '10': 'student'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `CreateStudentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudentRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTdHVkZW50UmVxdWVzdBIiCgdzdHVkZW50GAEgASgLMgguU3R1ZGVudFIHc3R1ZG'
    'VudBIQCgNtc2cYAiABKAlSA21zZw==');

@$core.Deprecated('Use createStudentResponseDescriptor instead')
const CreateStudentResponse$json = {
  '1': 'CreateStudentResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `CreateStudentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStudentResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTdHVkZW50UmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhAKA21zZxgCIAEoCVIDbX'
    'Nn');

@$core.Deprecated('Use readStudentRequestDescriptor instead')
const ReadStudentRequest$json = {
  '1': 'ReadStudentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'msg', '3': 2, '4': 1, '5': 8, '10': 'msg'},
  ],
};

/// Descriptor for `ReadStudentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readStudentRequestDescriptor = $convert.base64Decode(
    'ChJSZWFkU3R1ZGVudFJlcXVlc3QSDgoCaWQYASABKAVSAmlkEhAKA21zZxgCIAEoCFIDbXNn');

@$core.Deprecated('Use readStudentResponseDescriptor instead')
const ReadStudentResponse$json = {
  '1': 'ReadStudentResponse',
  '2': [
    {'1': 'student', '3': 1, '4': 1, '5': 11, '6': '.Student', '10': 'student'},
    {'1': 'msg', '3': 2, '4': 1, '5': 8, '10': 'msg'},
  ],
};

/// Descriptor for `ReadStudentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readStudentResponseDescriptor = $convert.base64Decode(
    'ChNSZWFkU3R1ZGVudFJlc3BvbnNlEiIKB3N0dWRlbnQYASABKAsyCC5TdHVkZW50UgdzdHVkZW'
    '50EhAKA21zZxgCIAEoCFIDbXNn');

@$core.Deprecated('Use updateStudentRequestDescriptor instead')
const UpdateStudentRequest$json = {
  '1': 'UpdateStudentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'student', '3': 2, '4': 1, '5': 11, '6': '.Student', '10': 'student'},
  ],
};

/// Descriptor for `UpdateStudentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudentRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTdHVkZW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSIgoHc3R1ZGVudBgCIAEoCz'
    'IILlN0dWRlbnRSB3N0dWRlbnQ=');

@$core.Deprecated('Use updateStudentResponseDescriptor instead')
const UpdateStudentResponse$json = {
  '1': 'UpdateStudentResponse',
  '2': [
    {'1': 'sucess', '3': 1, '4': 1, '5': 8, '10': 'sucess'},
  ],
};

/// Descriptor for `UpdateStudentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStudentResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTdHVkZW50UmVzcG9uc2USFgoGc3VjZXNzGAEgASgIUgZzdWNlc3M=');

@$core.Deprecated('Use deleteStudentRequestDescriptor instead')
const DeleteStudentRequest$json = {
  '1': 'DeleteStudentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteStudentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudentRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVTdHVkZW50UmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use deleteStudentResponseDescriptor instead')
const DeleteStudentResponse$json = {
  '1': 'DeleteStudentResponse',
  '2': [
    {'1': 'sucess', '3': 1, '4': 1, '5': 8, '10': 'sucess'},
  ],
};

/// Descriptor for `DeleteStudentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStudentResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTdHVkZW50UmVzcG9uc2USFgoGc3VjZXNzGAEgASgIUgZzdWNlc3M=');

