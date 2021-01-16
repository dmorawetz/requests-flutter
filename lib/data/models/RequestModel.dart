import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';

part 'RequestModel.freezed.dart';

@freezed
abstract class RequestModel with _$RequestModel {
  const factory RequestModel({
    @Default(Status.created) Status status,
    @Default("") String title,
    @Default("") String description,
    @Default(Priority.low) Priority priority,
    @Default("") String creator,
    @Default("") String creatorEmail,
    DateTime dueDate,
    @Default(0.0) double timeEstimation,
  }) = _RequestModel;

  factory RequestModel.fromGraphql(
    GraphqlApi$Query$Requests request
) => _RequestModel(
      status: request.status,
      title:  request.title,
      description: request.description,
      priority: request.priority,
      creator: request.creator != null ?'${request.creator.firstname} ${request.creator.lastname}' : '',
      creatorEmail: request.creator != null ? request.creator.email : '',
      dueDate: request.dueDate,
      timeEstimation: request.timeEstimation);
}
