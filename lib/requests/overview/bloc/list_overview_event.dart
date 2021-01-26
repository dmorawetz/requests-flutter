import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:requests/data/graphql/graphql_api.dart';

part 'list_overview_event.freezed.dart';

@freezed
abstract class ListOverviewEvent with _$ListOverviewEvent {
  const factory ListOverviewEvent.reload() = Reload;
  const factory ListOverviewEvent.markDone(
      OpenRequests$Query$Requests request) = MarkDone;
  const factory ListOverviewEvent.markRejected(
      OpenRequests$Query$Requests request) = MarkRejected;
  const factory ListOverviewEvent.setStatus(
      OpenRequests$Query$Requests request, Status status) = SetStatus;
}
