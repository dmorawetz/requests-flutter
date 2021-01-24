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
    yield* event.map(reload: reload);
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
}
