import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/overview/bloc/list_overview_event.dart';
import 'package:requests/requests/overview/bloc/list_overview_state.dart';

class ListOverviewBloc extends Bloc<ListOverviewEvent, ListOverviewState> {
  final GraphQLClient graphQLClient;

  ListOverviewBloc(this.graphQLClient) : super(ListOverviewState.loading());

  @override
  Stream<ListOverviewState> mapEventToState(ListOverviewEvent event) async* {
    yield* event.map(
      reload: reload,
      markDone: markDone,
      markRejected: markRejected,
    );
  }

  Stream<ListOverviewState> reload(Reload value) async* {
    yield ListOverviewState.loading(data: state.data);

    final result = await graphQLClient.query(
      QueryOptions(
        documentNode: OpenRequestsQuery().document,
        variables: {
          "ids": ["Daniel"]
        },
      ),
    );

    if (result.hasException) {
      yield ListOverviewState.error(result.exception.toString());
    } else {
      yield ListOverviewState.loaded(OpenRequests$Query.fromJson(result.data));
    }
  }

  Stream<ListOverviewState> markDone(MarkDone value) async* {
    final _data = state.data;
    _data.requests.remove(value.request);
    value.request.status = Status.done;

    yield* updateRequest(value.request, _data);
  }

  Stream<ListOverviewState> markRejected(MarkRejected value) async* {
    final _data = state.data;
    _data.requests.remove(value.request);
    value.request.status = Status.rejected;

    yield* updateRequest(value.request, _data);
  }

  Stream<ListOverviewState> updateRequest(
      OpenRequests$Query$Requests request, OpenRequests$Query newData) async* {
    final result = await graphQLClient.mutate(
      MutationOptions(
        documentNode: UpdateRequestMutation().document,
        variables: {"request": request.toUpdate()},
      ),
    );

    if (result.hasException) {
      yield ListOverviewState.error(result.exception.toString());
    } else {
      yield ListOverviewState.loaded(newData);
      add(ListOverviewEvent.reload());
    }
  }
}

extension on OpenRequests$Query$Requests {
  RequestUpdate toUpdate() {
    return RequestUpdate(
      id: this.id,
      status: this.status,
      title: this.title,
      description: this.description,
      priority: this.priority,
      dueDate: this.dueDate,
      timeEstimation: this.timeEstimation,
    );
  }
}
