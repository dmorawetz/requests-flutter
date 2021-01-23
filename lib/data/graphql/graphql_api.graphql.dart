// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class OpenRequests$Query$Requests$Creator with EquatableMixin {
  OpenRequests$Query$Requests$Creator();

  factory OpenRequests$Query$Requests$Creator.fromJson(
          Map<String, dynamic> json) =>
      _$OpenRequests$Query$Requests$CreatorFromJson(json);

  String firstname;

  String lastname;

  String email;

  @override
  List<Object> get props => [firstname, lastname, email];
  Map<String, dynamic> toJson() =>
      _$OpenRequests$Query$Requests$CreatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OpenRequests$Query$Requests with EquatableMixin {
  OpenRequests$Query$Requests();

  factory OpenRequests$Query$Requests.fromJson(Map<String, dynamic> json) =>
      _$OpenRequests$Query$RequestsFromJson(json);

  @JsonKey(unknownEnumValue: Status.artemisUnknown)
  Status status;

  String title;

  OpenRequests$Query$Requests$Creator creator;

  String description;

  DateTime creationDate;

  @JsonKey(unknownEnumValue: Priority.artemisUnknown)
  Priority priority;

  DateTime lastModified;

  DateTime dueDate;

  double timeEstimation;

  @override
  List<Object> get props => [
        status,
        title,
        creator,
        description,
        creationDate,
        priority,
        lastModified,
        dueDate,
        timeEstimation
      ];
  Map<String, dynamic> toJson() => _$OpenRequests$Query$RequestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OpenRequests$Query$UserStatistics with EquatableMixin {
  OpenRequests$Query$UserStatistics();

  factory OpenRequests$Query$UserStatistics.fromJson(
          Map<String, dynamic> json) =>
      _$OpenRequests$Query$UserStatisticsFromJson(json);

  String user;

  double hoursPlanned;

  double hoursDone;

  @override
  List<Object> get props => [user, hoursPlanned, hoursDone];
  Map<String, dynamic> toJson() =>
      _$OpenRequests$Query$UserStatisticsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OpenRequests$Query with EquatableMixin {
  OpenRequests$Query();

  factory OpenRequests$Query.fromJson(Map<String, dynamic> json) =>
      _$OpenRequests$QueryFromJson(json);

  List<OpenRequests$Query$Requests> requests;

  List<OpenRequests$Query$UserStatistics> userStatistics;

  @override
  List<Object> get props => [requests, userStatistics];
  Map<String, dynamic> toJson() => _$OpenRequests$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewRequest$Mutation$CreateRequest with EquatableMixin {
  NewRequest$Mutation$CreateRequest();

  factory NewRequest$Mutation$CreateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$NewRequest$Mutation$CreateRequestFromJson(json);

  @JsonKey(unknownEnumValue: Status.artemisUnknown)
  Status status;

  String title;

  DateTime creationDate;

  @override
  List<Object> get props => [status, title, creationDate];
  Map<String, dynamic> toJson() =>
      _$NewRequest$Mutation$CreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewRequest$Mutation with EquatableMixin {
  NewRequest$Mutation();

  factory NewRequest$Mutation.fromJson(Map<String, dynamic> json) =>
      _$NewRequest$MutationFromJson(json);

  NewRequest$Mutation$CreateRequest createRequest;

  @override
  List<Object> get props => [createRequest];
  Map<String, dynamic> toJson() => _$NewRequest$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FileInput with EquatableMixin {
  FileInput({this.filename, this.url});

  factory FileInput.fromJson(Map<String, dynamic> json) =>
      _$FileInputFromJson(json);

  String filename;

  String url;

  @override
  List<Object> get props => [filename, url];
  Map<String, dynamic> toJson() => _$FileInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestInput with EquatableMixin {
  RequestInput(
      {this.status,
      this.title,
      this.description,
      this.priority,
      this.creatorFirstname,
      this.creatorLastname,
      this.creatorEmail,
      this.dueDate,
      this.timeEstimation,
      this.attachments});

  factory RequestInput.fromJson(Map<String, dynamic> json) =>
      _$RequestInputFromJson(json);

  @JsonKey(unknownEnumValue: Status.artemisUnknown)
  Status status;

  String title;

  String description;

  @JsonKey(unknownEnumValue: Priority.artemisUnknown)
  Priority priority;

  String creatorFirstname;

  String creatorLastname;

  String creatorEmail;

  DateTime dueDate;

  double timeEstimation;

  List<FileInput> attachments;

  @override
  List<Object> get props => [
        status,
        title,
        description,
        priority,
        creatorFirstname,
        creatorLastname,
        creatorEmail,
        dueDate,
        timeEstimation,
        attachments
      ];
  Map<String, dynamic> toJson() => _$RequestInputToJson(this);
}

enum Status {
  @JsonValue('CREATED')
  created,
  @JsonValue('WORKING')
  working,
  @JsonValue('DONE')
  done,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum Priority {
  @JsonValue('LOW')
  low,
  @JsonValue('MEDIUM')
  medium,
  @JsonValue('HIGH')
  high,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class OpenRequestsArguments extends JsonSerializable with EquatableMixin {
  OpenRequestsArguments({this.ids});

  @override
  factory OpenRequestsArguments.fromJson(Map<String, dynamic> json) =>
      _$OpenRequestsArgumentsFromJson(json);

  final List<String> ids;

  @override
  List<Object> get props => [ids];
  @override
  Map<String, dynamic> toJson() => _$OpenRequestsArgumentsToJson(this);
}

class OpenRequestsQuery
    extends GraphQLQuery<OpenRequests$Query, OpenRequestsArguments> {
  OpenRequestsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'open_requests'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'ids')),
              type: ListTypeNode(
                  type: NamedTypeNode(
                      name: NameNode(value: 'String'), isNonNull: false),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'requests'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'without'),
                    value: ListValueNode(
                        values: [EnumValueNode(name: NameNode(value: 'DONE'))]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'creator'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'firstname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lastname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'email'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'creationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'priority'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'lastModified'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'dueDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'timeEstimation'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'userStatistics'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'ids')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'hoursPlanned'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'hoursDone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'open_requests';

  @override
  final OpenRequestsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  OpenRequests$Query parse(Map<String, dynamic> json) =>
      OpenRequests$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class NewRequestArguments extends JsonSerializable with EquatableMixin {
  NewRequestArguments({@required this.request});

  @override
  factory NewRequestArguments.fromJson(Map<String, dynamic> json) =>
      _$NewRequestArgumentsFromJson(json);

  final RequestInput request;

  @override
  List<Object> get props => [request];
  @override
  Map<String, dynamic> toJson() => _$NewRequestArgumentsToJson(this);
}

class NewRequestMutation
    extends GraphQLQuery<NewRequest$Mutation, NewRequestArguments> {
  NewRequestMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'new_request'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'request')),
              type: NamedTypeNode(
                  name: NameNode(value: 'RequestInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createRequest'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'request'),
                    value: VariableNode(name: NameNode(value: 'request')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'creationDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'new_request';

  @override
  final NewRequestArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  NewRequest$Mutation parse(Map<String, dynamic> json) =>
      NewRequest$Mutation.fromJson(json);
}
