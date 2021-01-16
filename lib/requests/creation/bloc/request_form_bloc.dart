import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/data/models/RequestModel.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/data/graphql/graphql_api.dart';

class RequestFormBloc extends Bloc<RequestFormEvent, RequestFormState> {
  final GraphQLClient graphQLClient;

  RequestFormBloc(this.graphQLClient, GraphqlApi$Query$Requests request)
      : super(RequestFormState.initial(request != null ? RequestModel.fromGraphql(request) : RequestModel(
            dueDate: DateTime.now().add(Duration(days: 7)),
            creator: "Daniel",
            creatorEmail: "")));

  @override
  Stream<RequestFormState> mapEventToState(RequestFormEvent event) async* {
    print(event);

    yield* event.map(
      save: save,
      changeEstimation: (ChangeEstimation value) async* {
        yield RequestFormState.timeEstimationChanged(
            state.req.copyWith(timeEstimation: value.hours));
      },
      changeDate: (ChangeDate value) async* {
        yield RequestFormState.dateChanged(
            state.req.copyWith(dueDate: value.date));
      },
      changeName: (ChangeName value) async* {
        yield RequestFormState.nameChanged(         // TODO fix naming
            state.req.copyWith(title: value.name));
      },
      changeDescription: (ChangeDescription value) async* {
        yield RequestFormState.descriptionChanged(
            state.req.copyWith(description: value.description));
      },
      changePriority: (ChangePriority value) async* {
        yield RequestFormState.priorityChanged(
            state.req.copyWith(priority: value.priority));
      },
    );
  }

  Stream<RequestFormState> save(Save s) async* {
    final result = await graphQLClient.mutate(MutationOptions(
        documentNode: NewRequestMutation(
          variables: NewRequestArguments(
            request: state.toInput(),
          ),
        ).document,
        variables: {
          "request": state.toInput(),
        }));

    if (result.hasException) {
      yield RequestFormState.error(state.req, result.exception.toString());
    } else {
      yield RequestFormState.saved(state.req);
    }
  }
}
