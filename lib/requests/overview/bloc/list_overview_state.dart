import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';

part 'list_overview_state.freezed.dart';

@freezed
abstract class ListOverviewState with _$ListOverviewState {
  const factory ListOverviewState.loading({OpenRequests$Query data}) =
      ListOverviewLoading;
  const factory ListOverviewState.loaded(OpenRequests$Query data) =
      ListOverviewLoaded;
  const factory ListOverviewState.error(String msg, {OpenRequests$Query data}) =
      ListOverviewError;
}
