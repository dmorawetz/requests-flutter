import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:requests/data/models/RequestModel.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/data/graphql/graphql_api.dart';

class RequestFormBloc extends Bloc<RequestFormEvent, RequestFormState> {
  RequestFormBloc()
      : super(RequestFormState.initial(RequestModel(
          dueDate: DateTime.now().add(Duration(days: 7)),
        )));

  @override
  Stream<RequestFormState> mapEventToState(RequestFormEvent event) async* {
    print(event);

    yield event.map(
      save: (val) => RequestFormState.saved(state.req),
      changeEstimation: (ChangeEstimation value) =>
          RequestFormState.timeEstimationChanged(
              state.req.copyWith(timeEstimation: value.hours)),
      changeDate: (ChangeDate value) =>
          RequestFormState.dateChanged(state.req.copyWith(dueDate: value.date)),
      changeName: (ChangeName value) =>
          RequestFormState.nameChanged(// TODO fix naming
              state.req.copyWith(title: value.name)),
      changeDescription: (ChangeDescription value) =>
          RequestFormState.descriptionChanged(
              state.req.copyWith(description: value.description)),
      changePriority: (ChangePriority value) =>
          RequestFormState.priorityChanged(
              state.req.copyWith(priority: value.priority)),
    );
  }
}
