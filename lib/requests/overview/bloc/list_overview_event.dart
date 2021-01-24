import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_overview_event.freezed.dart';

@freezed
abstract class ListOverviewEvent with _$ListOverviewEvent {
  const factory ListOverviewEvent.reload() = Reload;
}
