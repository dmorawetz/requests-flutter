// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphqlApi$Query$Requests _$GraphqlApi$Query$RequestsFromJson(
    Map<String, dynamic> json) {
  return GraphqlApi$Query$Requests()
    ..status = _$enumDecodeNullable(_$StatusEnumMap, json['status'],
        unknownValue: Status.artemisUnknown)
    ..title = json['title'] as String
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
    ..timeEstimation = (json['timeEstimation'] as num)?.toDouble();
}

Map<String, dynamic> _$GraphqlApi$Query$RequestsToJson(
        GraphqlApi$Query$Requests instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'title': instance.title,
      'description': instance.description,
      'creationDate': instance.creationDate?.toIso8601String(),
      'priority': _$PriorityEnumMap[instance.priority],
      'lastModified': instance.lastModified?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'timeEstimation': instance.timeEstimation,
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
  Status.kw$NEW: 'NEW',
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

GraphqlApi$Query _$GraphqlApi$QueryFromJson(Map<String, dynamic> json) {
  return GraphqlApi$Query()
    ..requests = (json['requests'] as List)
        ?.map((e) => e == null
            ? null
            : GraphqlApi$Query$Requests.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GraphqlApi$QueryToJson(GraphqlApi$Query instance) =>
    <String, dynamic>{
      'requests': instance.requests?.map((e) => e?.toJson())?.toList(),
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
