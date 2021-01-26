import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';
part 'request_form_event.freezed.dart';

@freezed
abstract class RequestFormEvent with _$RequestFormEvent {
  const factory RequestFormEvent.save() = Save;
  const factory RequestFormEvent.changeName(String name) = ChangeName;
  const factory RequestFormEvent.changeMail(String email) = ChangeMail;
  const factory RequestFormEvent.changeDescription(String description) =
      ChangeDescription;
  const factory RequestFormEvent.changeDate(DateTime date) = ChangeDate;
  const factory RequestFormEvent.changePriority(Priority priority) =
      ChangePriority;
  const factory RequestFormEvent.changeEstimation(double hours) =
      ChangeEstimation;
  const factory RequestFormEvent.uploadImage(String path) = UploadImage;
}
