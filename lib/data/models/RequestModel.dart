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
}
