// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_overview_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListOverviewEventTearOff {
  const _$ListOverviewEventTearOff();

// ignore: unused_element
  Reload reload() {
    return const Reload();
  }

// ignore: unused_element
  MarkDone markDone(OpenRequests$Query$Requests request) {
    return MarkDone(
      request,
    );
  }

// ignore: unused_element
  MarkRejected markRejected(OpenRequests$Query$Requests request) {
    return MarkRejected(
      request,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListOverviewEvent = _$ListOverviewEventTearOff();

/// @nodoc
mixin _$ListOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reload(),
    @required TResult markDone(OpenRequests$Query$Requests request),
    @required TResult markRejected(OpenRequests$Query$Requests request),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
    TResult markDone(OpenRequests$Query$Requests request),
    TResult markRejected(OpenRequests$Query$Requests request),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reload(Reload value),
    @required TResult markDone(MarkDone value),
    @required TResult markRejected(MarkRejected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
    TResult markDone(MarkDone value),
    TResult markRejected(MarkRejected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ListOverviewEventCopyWith<$Res> {
  factory $ListOverviewEventCopyWith(
          ListOverviewEvent value, $Res Function(ListOverviewEvent) then) =
      _$ListOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListOverviewEventCopyWithImpl<$Res>
    implements $ListOverviewEventCopyWith<$Res> {
  _$ListOverviewEventCopyWithImpl(this._value, this._then);

  final ListOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(ListOverviewEvent) _then;
}

/// @nodoc
abstract class $ReloadCopyWith<$Res> {
  factory $ReloadCopyWith(Reload value, $Res Function(Reload) then) =
      _$ReloadCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReloadCopyWithImpl<$Res> extends _$ListOverviewEventCopyWithImpl<$Res>
    implements $ReloadCopyWith<$Res> {
  _$ReloadCopyWithImpl(Reload _value, $Res Function(Reload) _then)
      : super(_value, (v) => _then(v as Reload));

  @override
  Reload get _value => super._value as Reload;
}

/// @nodoc
class _$Reload implements Reload {
  const _$Reload();

  @override
  String toString() {
    return 'ListOverviewEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Reload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reload(),
    @required TResult markDone(OpenRequests$Query$Requests request),
    @required TResult markRejected(OpenRequests$Query$Requests request),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
    TResult markDone(OpenRequests$Query$Requests request),
    TResult markRejected(OpenRequests$Query$Requests request),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reload(Reload value),
    @required TResult markDone(MarkDone value),
    @required TResult markRejected(MarkRejected value),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
    TResult markDone(MarkDone value),
    TResult markRejected(MarkRejected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class Reload implements ListOverviewEvent {
  const factory Reload() = _$Reload;
}

/// @nodoc
abstract class $MarkDoneCopyWith<$Res> {
  factory $MarkDoneCopyWith(MarkDone value, $Res Function(MarkDone) then) =
      _$MarkDoneCopyWithImpl<$Res>;
  $Res call({OpenRequests$Query$Requests request});
}

/// @nodoc
class _$MarkDoneCopyWithImpl<$Res> extends _$ListOverviewEventCopyWithImpl<$Res>
    implements $MarkDoneCopyWith<$Res> {
  _$MarkDoneCopyWithImpl(MarkDone _value, $Res Function(MarkDone) _then)
      : super(_value, (v) => _then(v as MarkDone));

  @override
  MarkDone get _value => super._value as MarkDone;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(MarkDone(
      request == freezed
          ? _value.request
          : request as OpenRequests$Query$Requests,
    ));
  }
}

/// @nodoc
class _$MarkDone implements MarkDone {
  const _$MarkDone(this.request) : assert(request != null);

  @override
  final OpenRequests$Query$Requests request;

  @override
  String toString() {
    return 'ListOverviewEvent.markDone(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkDone &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  $MarkDoneCopyWith<MarkDone> get copyWith =>
      _$MarkDoneCopyWithImpl<MarkDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reload(),
    @required TResult markDone(OpenRequests$Query$Requests request),
    @required TResult markRejected(OpenRequests$Query$Requests request),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return markDone(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
    TResult markDone(OpenRequests$Query$Requests request),
    TResult markRejected(OpenRequests$Query$Requests request),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reload(Reload value),
    @required TResult markDone(MarkDone value),
    @required TResult markRejected(MarkRejected value),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return markDone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
    TResult markDone(MarkDone value),
    TResult markRejected(MarkRejected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (markDone != null) {
      return markDone(this);
    }
    return orElse();
  }
}

abstract class MarkDone implements ListOverviewEvent {
  const factory MarkDone(OpenRequests$Query$Requests request) = _$MarkDone;

  OpenRequests$Query$Requests get request;
  $MarkDoneCopyWith<MarkDone> get copyWith;
}

/// @nodoc
abstract class $MarkRejectedCopyWith<$Res> {
  factory $MarkRejectedCopyWith(
          MarkRejected value, $Res Function(MarkRejected) then) =
      _$MarkRejectedCopyWithImpl<$Res>;
  $Res call({OpenRequests$Query$Requests request});
}

/// @nodoc
class _$MarkRejectedCopyWithImpl<$Res>
    extends _$ListOverviewEventCopyWithImpl<$Res>
    implements $MarkRejectedCopyWith<$Res> {
  _$MarkRejectedCopyWithImpl(
      MarkRejected _value, $Res Function(MarkRejected) _then)
      : super(_value, (v) => _then(v as MarkRejected));

  @override
  MarkRejected get _value => super._value as MarkRejected;

  @override
  $Res call({
    Object request = freezed,
  }) {
    return _then(MarkRejected(
      request == freezed
          ? _value.request
          : request as OpenRequests$Query$Requests,
    ));
  }
}

/// @nodoc
class _$MarkRejected implements MarkRejected {
  const _$MarkRejected(this.request) : assert(request != null);

  @override
  final OpenRequests$Query$Requests request;

  @override
  String toString() {
    return 'ListOverviewEvent.markRejected(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkRejected &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @override
  $MarkRejectedCopyWith<MarkRejected> get copyWith =>
      _$MarkRejectedCopyWithImpl<MarkRejected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reload(),
    @required TResult markDone(OpenRequests$Query$Requests request),
    @required TResult markRejected(OpenRequests$Query$Requests request),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return markRejected(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
    TResult markDone(OpenRequests$Query$Requests request),
    TResult markRejected(OpenRequests$Query$Requests request),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (markRejected != null) {
      return markRejected(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reload(Reload value),
    @required TResult markDone(MarkDone value),
    @required TResult markRejected(MarkRejected value),
  }) {
    assert(reload != null);
    assert(markDone != null);
    assert(markRejected != null);
    return markRejected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
    TResult markDone(MarkDone value),
    TResult markRejected(MarkRejected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (markRejected != null) {
      return markRejected(this);
    }
    return orElse();
  }
}

abstract class MarkRejected implements ListOverviewEvent {
  const factory MarkRejected(OpenRequests$Query$Requests request) =
      _$MarkRejected;

  OpenRequests$Query$Requests get request;
  $MarkRejectedCopyWith<MarkRejected> get copyWith;
}
