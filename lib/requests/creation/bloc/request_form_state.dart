import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/data/models/RequestModel.dart';

part 'request_form_state.freezed.dart';

@freezed
abstract class RequestFormState with _$RequestFormState {
  const factory RequestFormState.initial(RequestModel req) = RequestFormInitial;
  const factory RequestFormState.nameChanged(RequestModel req) = NameChanged;
  const factory RequestFormState.descriptionChanged(RequestModel req) =
      DescriptionChanged;
  const factory RequestFormState.dateChanged(RequestModel req) = DateChanged;
  const factory RequestFormState.priorityChanged(RequestModel req) =
      PriorityChanged;
  const factory RequestFormState.timeEstimationChanged(RequestModel req) =
      TimeEstimationChanged;
  const factory RequestFormState.imagesChanged(RequestModel req) =
      ImagesChanged;
  const factory RequestFormState.audioChanged(RequestModel req) = AudioChanged;
}
