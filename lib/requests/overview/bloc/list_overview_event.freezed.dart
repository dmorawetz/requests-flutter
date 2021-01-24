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
}

/// @nodoc
// ignore: unused_element
const $ListOverviewEvent = _$ListOverviewEventTearOff();

/// @nodoc
mixin _$ListOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reload(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reload(Reload value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
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
  }) {
    assert(reload != null);
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reload(),
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
  }) {
    assert(reload != null);
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reload(Reload value),
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
