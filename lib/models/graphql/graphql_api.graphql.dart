// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GraphqlApi$Query$Requests with EquatableMixin {
  GraphqlApi$Query$Requests();

  factory GraphqlApi$Query$Requests.fromJson(Map<String, dynamic> json) =>
      _$GraphqlApi$Query$RequestsFromJson(json);

  int status;

  String title;

  DateTime creationDate;

  @override
  List<Object> get props => [status, title, creationDate];
  Map<String, dynamic> toJson() => _$GraphqlApi$Query$RequestsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GraphqlApi$Query with EquatableMixin {
  GraphqlApi$Query();

  factory GraphqlApi$Query.fromJson(Map<String, dynamic> json) =>
      _$GraphqlApi$QueryFromJson(json);

  List<GraphqlApi$Query$Requests> requests;

  @override
  List<Object> get props => [requests];
  Map<String, dynamic> toJson() => _$GraphqlApi$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewRequest$Mutation$CreateRequest with EquatableMixin {
  NewRequest$Mutation$CreateRequest();

  factory NewRequest$Mutation$CreateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$NewRequest$Mutation$CreateRequestFromJson(json);

  int status;

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
      this.timeEstimation});

  factory RequestInput.fromJson(Map<String, dynamic> json) =>
      _$RequestInputFromJson(json);

  int status;

  String title;

  String description;

  @JsonKey(unknownEnumValue: Priority.artemisUnknown)
  Priority priority;

  String creatorFirstname;

  String creatorLastname;

  String creatorEmail;

  DateTime dueDate;

  int timeEstimation;

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
        timeEstimation
      ];
  Map<String, dynamic> toJson() => _$RequestInputToJson(this);
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

class GraphqlApiQuery extends GraphQLQuery<GraphqlApi$Query, JsonSerializable> {
  GraphqlApiQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: null,
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'requests'),
              alias: null,
              arguments: [],
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
  final String operationName = 'graphql_api';

  @override
  List<Object> get props => [document, operationName];
  @override
  GraphqlApi$Query parse(Map<String, dynamic> json) =>
      GraphqlApi$Query.fromJson(json);
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
