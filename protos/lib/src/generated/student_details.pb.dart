//
//  Generated code. Do not modify.
//  source: student_details.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Student extends $pb.GeneratedMessage {
  factory Student() => create();
  Student._() : super();
  factory Student.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Student.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Student', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'dipartment')
    ..aOS(4, _omitFieldNames ? '' : 'emai')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'imageData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Student clone() => Student()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Student copyWith(void Function(Student) updates) => super.copyWith((message) => updates(message as Student)) as Student;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Student create() => Student._();
  Student createEmptyInstance() => create();
  static $pb.PbList<Student> createRepeated() => $pb.PbList<Student>();
  @$core.pragma('dart2js:noInline')
  static Student getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Student>(create);
  static Student? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dipartment => $_getSZ(2);
  @$pb.TagNumber(3)
  set dipartment($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDipartment() => $_has(2);
  @$pb.TagNumber(3)
  void clearDipartment() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get emai => $_getSZ(3);
  @$pb.TagNumber(4)
  set emai($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmai() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmai() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get imageData => $_getN(4);
  @$pb.TagNumber(5)
  set imageData($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageData() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageData() => clearField(5);
}

class GetStudentListRequest extends $pb.GeneratedMessage {
  factory GetStudentListRequest() => create();
  GetStudentListRequest._() : super();
  factory GetStudentListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudentListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStudentListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStudentListRequest clone() => GetStudentListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStudentListRequest copyWith(void Function(GetStudentListRequest) updates) => super.copyWith((message) => updates(message as GetStudentListRequest)) as GetStudentListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStudentListRequest create() => GetStudentListRequest._();
  GetStudentListRequest createEmptyInstance() => create();
  static $pb.PbList<GetStudentListRequest> createRepeated() => $pb.PbList<GetStudentListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStudentListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudentListRequest>(create);
  static GetStudentListRequest? _defaultInstance;
}

class GetStudentListResponse extends $pb.GeneratedMessage {
  factory GetStudentListResponse() => create();
  GetStudentListResponse._() : super();
  factory GetStudentListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStudentListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStudentListResponse', createEmptyInstance: create)
    ..pc<Student>(1, _omitFieldNames ? '' : 'studentslist', $pb.PbFieldType.PM, subBuilder: Student.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStudentListResponse clone() => GetStudentListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStudentListResponse copyWith(void Function(GetStudentListResponse) updates) => super.copyWith((message) => updates(message as GetStudentListResponse)) as GetStudentListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStudentListResponse create() => GetStudentListResponse._();
  GetStudentListResponse createEmptyInstance() => create();
  static $pb.PbList<GetStudentListResponse> createRepeated() => $pb.PbList<GetStudentListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStudentListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStudentListResponse>(create);
  static GetStudentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Student> get studentslist => $_getList(0);
}

class CreateStudentRequest extends $pb.GeneratedMessage {
  factory CreateStudentRequest() => create();
  CreateStudentRequest._() : super();
  factory CreateStudentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudentRequest', createEmptyInstance: create)
    ..aOM<Student>(1, _omitFieldNames ? '' : 'student', subBuilder: Student.create)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudentRequest clone() => CreateStudentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudentRequest copyWith(void Function(CreateStudentRequest) updates) => super.copyWith((message) => updates(message as CreateStudentRequest)) as CreateStudentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudentRequest create() => CreateStudentRequest._();
  CreateStudentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStudentRequest> createRepeated() => $pb.PbList<CreateStudentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStudentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudentRequest>(create);
  static CreateStudentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Student get student => $_getN(0);
  @$pb.TagNumber(1)
  set student(Student v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudent() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudent() => clearField(1);
  @$pb.TagNumber(1)
  Student ensureStudent() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class CreateStudentResponse extends $pb.GeneratedMessage {
  factory CreateStudentResponse() => create();
  CreateStudentResponse._() : super();
  factory CreateStudentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStudentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStudentResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStudentResponse clone() => CreateStudentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStudentResponse copyWith(void Function(CreateStudentResponse) updates) => super.copyWith((message) => updates(message as CreateStudentResponse)) as CreateStudentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStudentResponse create() => CreateStudentResponse._();
  CreateStudentResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStudentResponse> createRepeated() => $pb.PbList<CreateStudentResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStudentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStudentResponse>(create);
  static CreateStudentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class ReadStudentRequest extends $pb.GeneratedMessage {
  factory ReadStudentRequest() => create();
  ReadStudentRequest._() : super();
  factory ReadStudentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadStudentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadStudentRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadStudentRequest clone() => ReadStudentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadStudentRequest copyWith(void Function(ReadStudentRequest) updates) => super.copyWith((message) => updates(message as ReadStudentRequest)) as ReadStudentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadStudentRequest create() => ReadStudentRequest._();
  ReadStudentRequest createEmptyInstance() => create();
  static $pb.PbList<ReadStudentRequest> createRepeated() => $pb.PbList<ReadStudentRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadStudentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadStudentRequest>(create);
  static ReadStudentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get msg => $_getBF(1);
  @$pb.TagNumber(2)
  set msg($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class ReadStudentResponse extends $pb.GeneratedMessage {
  factory ReadStudentResponse() => create();
  ReadStudentResponse._() : super();
  factory ReadStudentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadStudentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadStudentResponse', createEmptyInstance: create)
    ..aOM<Student>(1, _omitFieldNames ? '' : 'student', subBuilder: Student.create)
    ..aOB(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadStudentResponse clone() => ReadStudentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadStudentResponse copyWith(void Function(ReadStudentResponse) updates) => super.copyWith((message) => updates(message as ReadStudentResponse)) as ReadStudentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadStudentResponse create() => ReadStudentResponse._();
  ReadStudentResponse createEmptyInstance() => create();
  static $pb.PbList<ReadStudentResponse> createRepeated() => $pb.PbList<ReadStudentResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadStudentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadStudentResponse>(create);
  static ReadStudentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Student get student => $_getN(0);
  @$pb.TagNumber(1)
  set student(Student v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStudent() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudent() => clearField(1);
  @$pb.TagNumber(1)
  Student ensureStudent() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get msg => $_getBF(1);
  @$pb.TagNumber(2)
  set msg($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class UpdateStudentRequest extends $pb.GeneratedMessage {
  factory UpdateStudentRequest() => create();
  UpdateStudentRequest._() : super();
  factory UpdateStudentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudentRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<Student>(2, _omitFieldNames ? '' : 'student', subBuilder: Student.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudentRequest clone() => UpdateStudentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudentRequest copyWith(void Function(UpdateStudentRequest) updates) => super.copyWith((message) => updates(message as UpdateStudentRequest)) as UpdateStudentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudentRequest create() => UpdateStudentRequest._();
  UpdateStudentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStudentRequest> createRepeated() => $pb.PbList<UpdateStudentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudentRequest>(create);
  static UpdateStudentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Student get student => $_getN(1);
  @$pb.TagNumber(2)
  set student(Student v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStudent() => $_has(1);
  @$pb.TagNumber(2)
  void clearStudent() => clearField(2);
  @$pb.TagNumber(2)
  Student ensureStudent() => $_ensure(1);
}

class UpdateStudentResponse extends $pb.GeneratedMessage {
  factory UpdateStudentResponse() => create();
  UpdateStudentResponse._() : super();
  factory UpdateStudentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStudentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStudentResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'sucess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStudentResponse clone() => UpdateStudentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStudentResponse copyWith(void Function(UpdateStudentResponse) updates) => super.copyWith((message) => updates(message as UpdateStudentResponse)) as UpdateStudentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStudentResponse create() => UpdateStudentResponse._();
  UpdateStudentResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStudentResponse> createRepeated() => $pb.PbList<UpdateStudentResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStudentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStudentResponse>(create);
  static UpdateStudentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sucess => $_getBF(0);
  @$pb.TagNumber(1)
  set sucess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSucess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSucess() => clearField(1);
}

class DeleteStudentRequest extends $pb.GeneratedMessage {
  factory DeleteStudentRequest() => create();
  DeleteStudentRequest._() : super();
  factory DeleteStudentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudentRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudentRequest clone() => DeleteStudentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudentRequest copyWith(void Function(DeleteStudentRequest) updates) => super.copyWith((message) => updates(message as DeleteStudentRequest)) as DeleteStudentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudentRequest create() => DeleteStudentRequest._();
  DeleteStudentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStudentRequest> createRepeated() => $pb.PbList<DeleteStudentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudentRequest>(create);
  static DeleteStudentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteStudentResponse extends $pb.GeneratedMessage {
  factory DeleteStudentResponse() => create();
  DeleteStudentResponse._() : super();
  factory DeleteStudentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStudentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStudentResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'sucess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStudentResponse clone() => DeleteStudentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStudentResponse copyWith(void Function(DeleteStudentResponse) updates) => super.copyWith((message) => updates(message as DeleteStudentResponse)) as DeleteStudentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStudentResponse create() => DeleteStudentResponse._();
  DeleteStudentResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStudentResponse> createRepeated() => $pb.PbList<DeleteStudentResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStudentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStudentResponse>(create);
  static DeleteStudentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sucess => $_getBF(0);
  @$pb.TagNumber(1)
  set sucess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSucess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSucess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
