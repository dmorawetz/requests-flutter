// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenRequests$Query$Requests$Creator
    _$OpenRequests$Query$Requests$CreatorFromJson(Map<String, dynamic> json) {
  return OpenRequests$Query$Requests$Creator()
    ..firstname = json['firstname'] as String
    ..lastname = json['lastname'] as String
    ..email = json['email'] as String;
}

Map<String, dynamic> _$OpenRequests$Query$Requests$CreatorToJson(
        OpenRequests$Query$Requests$Creator instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
    };

OpenRequests$Query$Requests$Attachments
    _$OpenRequests$Query$Requests$AttachmentsFromJson(
        Map<String, dynamic> json) {
  return OpenRequests$Query$Requests$Attachments()
    ..objectName = json['objectName'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$OpenRequests$Query$Requests$AttachmentsToJson(
        OpenRequests$Query$Requests$Attachments instance) =>
    <String, dynamic>{
      'objectName': instance.objectName,
      'url': instance.url,
    };

OpenRequests$Query$Requests _$OpenRequests$Query$RequestsFromJson(
    Map<String, dynamic> json) {
  return OpenRequests$Query$Requests()
    ..id = json['id'] as String
    ..status = _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown)
    ..title = json['title'] as String
    ..creator = json['creator'] == null
        ? null
        : OpenRequests$Query$Requests$Creator.fromJson(
            json['creator'] as Map<String, dynamic>)
    ..description = json['description'] as String
    ..creationDate = json['creationDate'] == null
        ? null
        : DateTime.parse(json['creationDate'] as String)
    ..priority = _$enumDecodeNullable(_$PriorityEnumMap, json['priority'],
        unknownValue: Priority.artemisUnknown)
    ..lastModified = json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String)
    ..dueDate = json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String)
    ..timeEstimation = (json['timeEstimation'] as num)?.toDouble()
    ..attachments = (json['attachments'] as List)
        ?.map((e) => e == null
            ? null
            : OpenRequests$Query$Requests$Attachments.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OpenRequests$Query$RequestsToJson(
        OpenRequests$Query$Requests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'creator': instance.creator?.toJson(),
      'description': instance.description,
      'creationDate': instance.creationDate?.toIso8601String(),
      'priority': _$PriorityEnumMap[instance.priority],
      'lastModified': instance.lastModified?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'timeEstimation': instance.timeEstimation,
      'attachments': instance.attachments?.map((e) => e?.toJson())?.toList(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$StatusEnumMap = {
  Status.created: 'CREATED',
  Status.working: 'WORKING',
  Status.done: 'DONE',
  Status.rejected: 'REJECTED',
  Status.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$PriorityEnumMap = {
  Priority.low: 'LOW',
  Priority.medium: 'MEDIUM',
  Priority.high: 'HIGH',
  Priority.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

OpenRequests$Query$UserStatistics _$OpenRequests$Query$UserStatisticsFromJson(
    Map<String, dynamic> json) {
  return OpenRequests$Query$UserStatistics()
    ..user = json['user'] as String
    ..hoursPlanned = (json['hoursPlanned'] as num)?.toDouble()
    ..hoursDone = (json['hoursDone'] as num)?.toDouble();
}

Map<String, dynamic> _$OpenRequests$Query$UserStatisticsToJson(
        OpenRequests$Query$UserStatistics instance) =>
    <String, dynamic>{
      'user': instance.user,
      'hoursPlanned': instance.hoursPlanned,
      'hoursDone': instance.hoursDone,
    };

OpenRequests$Query _$OpenRequests$QueryFromJson(Map<String, dynamic> json) {
  return OpenRequests$Query()
    ..requests = (json['requests'] as List)
        ?.map((e) => e == null
            ? null
            : OpenRequests$Query$Requests.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..userStatistics = (json['userStatistics'] as List)
        ?.map((e) => e == null
            ? null
            : OpenRequests$Query$UserStatistics.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OpenRequests$QueryToJson(OpenRequests$Query instance) =>
    <String, dynamic>{
      'requests': instance.requests?.map((e) => e?.toJson())?.toList(),
      'userStatistics':
          instance.userStatistics?.map((e) => e?.toJson())?.toList(),
    };

NewRequest$Mutation$CreateRequest _$NewRequest$Mutation$CreateRequestFromJson(
    Map<String, dynamic> json) {
  return NewRequest$Mutation$CreateRequest()
    ..status = _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown)
    ..title = json['title'] as String
    ..creationDate = json['creationDate'] == null
        ? null
        : DateTime.parse(json['creationDate'] as String);
}

Map<String, dynamic> _$NewRequest$Mutation$CreateRequestToJson(
        NewRequest$Mutation$CreateRequest instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'creationDate': instance.creationDate?.toIso8601String(),
    };

NewRequest$Mutation _$NewRequest$MutationFromJson(Map<String, dynamic> json) {
  return NewRequest$Mutation()
    ..createRequest = json['createRequest'] == null
        ? null
        : NewRequest$Mutation$CreateRequest.fromJson(
            json['createRequest'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NewRequest$MutationToJson(
        NewRequest$Mutation instance) =>
    <String, dynamic>{
      'createRequest': instance.createRequest?.toJson(),
    };

FileInput _$FileInputFromJson(Map<String, dynamic> json) {
  return FileInput(
    objectName: json['objectName'] as String,
  );
}

Map<String, dynamic> _$FileInputToJson(FileInput instance) => <String, dynamic>{
      'objectName': instance.objectName,
    };

RequestInput _$RequestInputFromJson(Map<String, dynamic> json) {
  return RequestInput(
    status: _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown),
    title: json['title'] as String,
    description: json['description'] as String,
    priority: _$enumDecodeNullable(_$PriorityEnumMap, json['priority'],
        unknownValue: Priority.artemisUnknown),
    creatorFirstname: json['creatorFirstname'] as String,
    creatorLastname: json['creatorLastname'] as String,
    creatorEmail: json['creatorEmail'] as String,
    dueDate: json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String),
    timeEstimation: (json['timeEstimation'] as num)?.toDouble(),
    attachments: (json['attachments'] as List)
        ?.map((e) =>
            e == null ? null : FileInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RequestInputToJson(RequestInput instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'description': instance.description,
      'priority': _$PriorityEnumMap[instance.priority],
      'creatorFirstname': instance.creatorFirstname,
      'creatorLastname': instance.creatorLastname,
      'creatorEmail': instance.creatorEmail,
      'dueDate': instance.dueDate?.toIso8601String(),
      'timeEstimation': instance.timeEstimation,
      'attachments': instance.attachments?.map((e) => e?.toJson())?.toList(),
    };

UpdateRequest$Mutation$Update _$UpdateRequest$Mutation$UpdateFromJson(
    Map<String, dynamic> json) {
  return UpdateRequest$Mutation$Update()
    ..status = _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown)
    ..title = json['title'] as String
    ..creationDate = json['creationDate'] == null
        ? null
        : DateTime.parse(json['creationDate'] as String);
}

Map<String, dynamic> _$UpdateRequest$Mutation$UpdateToJson(
        UpdateRequest$Mutation$Update instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'creationDate': instance.creationDate?.toIso8601String(),
    };

UpdateRequest$Mutation _$UpdateRequest$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateRequest$Mutation()
    ..update = json['update'] == null
        ? null
        : UpdateRequest$Mutation$Update.fromJson(
            json['update'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpdateRequest$MutationToJson(
        UpdateRequest$Mutation instance) =>
    <String, dynamic>{
      'update': instance.update?.toJson(),
    };

RequestUpdate _$RequestUpdateFromJson(Map<String, dynamic> json) {
  return RequestUpdate(
    id: json['id'] as String,
    status: _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown),
    title: json['title'] as String,
    description: json['description'] as String,
    attachments: (json['attachments'] as List)
        ?.map((e) =>
            e == null ? null : FileInput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    priority: _$enumDecodeNullable(_$PriorityEnumMap, json['priority'],
        unknownValue: Priority.artemisUnknown),
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    dueDate: json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String),
    timeEstimation: (json['timeEstimation'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RequestUpdateToJson(RequestUpdate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'description': instance.description,
      'attachments': instance.attachments?.map((e) => e?.toJson())?.toList(),
      'priority': _$PriorityEnumMap[instance.priority],
      'lastModified': instance.lastModified?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'timeEstimation': instance.timeEstimation,
    };

SignedUpload$Query$SignedUpload _$SignedUpload$Query$SignedUploadFromJson(
    Map<String, dynamic> json) {
  return SignedUpload$Query$SignedUpload()
    ..uploadUrl = json['uploadUrl'] as String
    ..fileUrl = json['fileUrl'] as String
    ..objectName = json['objectName'] as String;
}

Map<String, dynamic> _$SignedUpload$Query$SignedUploadToJson(
        SignedUpload$Query$SignedUpload instance) =>
    <String, dynamic>{
      'uploadUrl': instance.uploadUrl,
      'fileUrl': instance.fileUrl,
      'objectName': instance.objectName,
    };

SignedUpload$Query _$SignedUpload$QueryFromJson(Map<String, dynamic> json) {
  return SignedUpload$Query()
    ..signedUpload = json['signedUpload'] == null
        ? null
        : SignedUpload$Query$SignedUpload.fromJson(
            json['signedUpload'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignedUpload$QueryToJson(SignedUpload$Query instance) =>
    <String, dynamic>{
      'signedUpload': instance.signedUpload?.toJson(),
    };

OpenRequestsArguments _$OpenRequestsArgumentsFromJson(
    Map<String, dynamic> json) {
  return OpenRequestsArguments(
    ids: (json['ids'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$OpenRequestsArgumentsToJson(
        OpenRequestsArguments instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

NewRequestArguments _$NewRequestArgumentsFromJson(Map<String, dynamic> json) {
  return NewRequestArguments(
    request: json['request'] == null
        ? null
        : RequestInput.fromJson(json['request'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NewRequestArgumentsToJson(
        NewRequestArguments instance) =>
    <String, dynamic>{
      'request': instance.request?.toJson(),
    };

UpdateRequestArguments _$UpdateRequestArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateRequestArguments(
    request: json['request'] == null
        ? null
        : RequestUpdate.fromJson(json['request'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateRequestArgumentsToJson(
        UpdateRequestArguments instance) =>
    <String, dynamic>{
      'request': instance.request?.toJson(),
    };
