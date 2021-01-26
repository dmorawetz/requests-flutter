import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';

part 'RequestModel.freezed.dart';

@freezed
abstract class RequestModel implements _$RequestModel {
  const RequestModel._();
  const factory RequestModel({
    @Default(Status.created) Status status,
    @Default("") String title,
    @Default("") String description,
    @Default(Priority.low) Priority priority,
    @Default("") String creator,
    @Default("") String creatorEmail,
    DateTime dueDate,
    @Default(0.0) double timeEstimation,
    @Default({}) Map<String, String> attachments,
  }) = _RequestModel;

  static RequestModel fromGraphql(OpenRequests$Query$Requests request) =>
      _RequestModel(
        status: request.status,
        title: request.title,
        description: request.description,
        priority: request.priority,
        creator: request.creator != null
            ? '${request.creator.firstname} ${request.creator.lastname}'
            : '',
        creatorEmail: request.creator != null ? request.creator.email : '',
        dueDate: request.dueDate,
        timeEstimation: request.timeEstimation,
        attachments: Map.fromIterable(
          request.attachments,
          key: (e) => e.objectName,
          value: (e) => e.url,
        ),
      );
}
