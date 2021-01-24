// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListOverviewStateTearOff {
  const _$ListOverviewStateTearOff();

// ignore: unused_element
  ListOverviewLoading loading({OpenRequests$Query data}) {
    return ListOverviewLoading(
      data: data,
    );
  }

// ignore: unused_element
  ListOverviewLoaded loaded(OpenRequests$Query data) {
    return ListOverviewLoaded(
      data,
    );
  }

// ignore: unused_element
  ListOverviewError error(String msg, {OpenRequests$Query data}) {
    return ListOverviewError(
      msg,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListOverviewState = _$ListOverviewStateTearOff();

/// @nodoc
mixin _$ListOverviewState {
  OpenRequests$Query get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(OpenRequests$Query data),
    @required TResult loaded(OpenRequests$Query data),
    @required TResult error(String msg, OpenRequests$Query data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(OpenRequests$Query data),
    TResult loaded(OpenRequests$Query data),
    TResult error(String msg, OpenRequests$Query data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ListOverviewLoading value),
    @required TResult loaded(ListOverviewLoaded value),
    @required TResult error(ListOverviewError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ListOverviewLoading value),
    TResult loaded(ListOverviewLoaded value),
    TResult error(ListOverviewError value),
    @required TResult orElse(),
  });

  $ListOverviewStateCopyWith<ListOverviewState> get copyWith;
}

/// @nodoc
abstract class $ListOverviewStateCopyWith<$Res> {
  factory $ListOverviewStateCopyWith(
          ListOverviewState value, $Res Function(ListOverviewState) then) =
      _$ListOverviewStateCopyWithImpl<$Res>;
  $Res call({OpenRequests$Query data});
}

/// @nodoc
class _$ListOverviewStateCopyWithImpl<$Res>
    implements $ListOverviewStateCopyWith<$Res> {
  _$ListOverviewStateCopyWithImpl(this._value, this._then);

  final ListOverviewState _value;
  // ignore: unused_field
  final $Res Function(ListOverviewState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as OpenRequests$Query,
    ));
  }
}

/// @nodoc
abstract class $ListOverviewLoadingCopyWith<$Res>
    implements $ListOverviewStateCopyWith<$Res> {
  factory $ListOverviewLoadingCopyWith(
          ListOverviewLoading value, $Res Function(ListOverviewLoading) then) =
      _$ListOverviewLoadingCopyWithImpl<$Res>;
  @override
  $Res call({OpenRequests$Query data});
}

/// @nodoc
class _$ListOverviewLoadingCopyWithImpl<$Res>
    extends _$ListOverviewStateCopyWithImpl<$Res>
    implements $ListOverviewLoadingCopyWith<$Res> {
  _$ListOverviewLoadingCopyWithImpl(
      ListOverviewLoading _value, $Res Function(ListOverviewLoading) _then)
      : super(_value, (v) => _then(v as ListOverviewLoading));

  @override
  ListOverviewLoading get _value => super._value as ListOverviewLoading;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListOverviewLoading(
      data: data == freezed ? _value.data : data as OpenRequests$Query,
    ));
  }
}

/// @nodoc
class _$ListOverviewLoading implements ListOverviewLoading {
  const _$ListOverviewLoading({this.data});

  @override
  final OpenRequests$Query data;

  @override
  String toString() {
    return 'ListOverviewState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOverviewLoading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $ListOverviewLoadingCopyWith<ListOverviewLoading> get copyWith =>
      _$ListOverviewLoadingCopyWithImpl<ListOverviewLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(OpenRequests$Query data),
    @required TResult loaded(OpenRequests$Query data),
    @required TResult error(String msg, OpenRequests$Query data),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(OpenRequests$Query data),
    TResult loaded(OpenRequests$Query data),
    TResult error(String msg, OpenRequests$Query data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ListOverviewLoading value),
    @required TResult loaded(ListOverviewLoaded value),
    @required TResult error(ListOverviewError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ListOverviewLoading value),
    TResult loaded(ListOverviewLoaded value),
    TResult error(ListOverviewError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListOverviewLoading implements ListOverviewState {
  const factory ListOverviewLoading({OpenRequests$Query data}) =
      _$ListOverviewLoading;

  @override
  OpenRequests$Query get data;
  @override
  $ListOverviewLoadingCopyWith<ListOverviewLoading> get copyWith;
}

/// @nodoc
abstract class $ListOverviewLoadedCopyWith<$Res>
    implements $ListOverviewStateCopyWith<$Res> {
  factory $ListOverviewLoadedCopyWith(
          ListOverviewLoaded value, $Res Function(ListOverviewLoaded) then) =
      _$ListOverviewLoadedCopyWithImpl<$Res>;
  @override
  $Res call({OpenRequests$Query data});
}

/// @nodoc
class _$ListOverviewLoadedCopyWithImpl<$Res>
    extends _$ListOverviewStateCopyWithImpl<$Res>
    implements $ListOverviewLoadedCopyWith<$Res> {
  _$ListOverviewLoadedCopyWithImpl(
      ListOverviewLoaded _value, $Res Function(ListOverviewLoaded) _then)
      : super(_value, (v) => _then(v as ListOverviewLoaded));

  @override
  ListOverviewLoaded get _value => super._value as ListOverviewLoaded;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListOverviewLoaded(
      data == freezed ? _value.data : data as OpenRequests$Query,
    ));
  }
}

/// @nodoc
class _$ListOverviewLoaded implements ListOverviewLoaded {
  const _$ListOverviewLoaded(this.data) : assert(data != null);

  @override
  final OpenRequests$Query data;

  @override
  String toString() {
    return 'ListOverviewState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOverviewLoaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $ListOverviewLoadedCopyWith<ListOverviewLoaded> get copyWith =>
      _$ListOverviewLoadedCopyWithImpl<ListOverviewLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(OpenRequests$Query data),
    @required TResult loaded(OpenRequests$Query data),
    @required TResult error(String msg, OpenRequests$Query data),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(OpenRequests$Query data),
    TResult loaded(OpenRequests$Query data),
    TResult error(String msg, OpenRequests$Query data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ListOverviewLoading value),
    @required TResult loaded(ListOverviewLoaded value),
    @required TResult error(ListOverviewError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ListOverviewLoading value),
    TResult loaded(ListOverviewLoaded value),
    TResult error(ListOverviewError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ListOverviewLoaded implements ListOverviewState {
  const factory ListOverviewLoaded(OpenRequests$Query data) =
      _$ListOverviewLoaded;

  @override
  OpenRequests$Query get data;
  @override
  $ListOverviewLoadedCopyWith<ListOverviewLoaded> get copyWith;
}

/// @nodoc
abstract class $ListOverviewErrorCopyWith<$Res>
    implements $ListOverviewStateCopyWith<$Res> {
  factory $ListOverviewErrorCopyWith(
          ListOverviewError value, $Res Function(ListOverviewError) then) =
      _$ListOverviewErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg, OpenRequests$Query data});
}

/// @nodoc
class _$ListOverviewErrorCopyWithImpl<$Res>
    extends _$ListOverviewStateCopyWithImpl<$Res>
    implements $ListOverviewErrorCopyWith<$Res> {
  _$ListOverviewErrorCopyWithImpl(
      ListOverviewError _value, $Res Function(ListOverviewError) _then)
      : super(_value, (v) => _then(v as ListOverviewError));

  @override
  ListOverviewError get _value => super._value as ListOverviewError;

  @override
  $Res call({
    Object msg = freezed,
    Object data = freezed,
  }) {
    return _then(ListOverviewError(
      msg == freezed ? _value.msg : msg as String,
      data: data == freezed ? _value.data : data as OpenRequests$Query,
    ));
  }
}

/// @nodoc
class _$ListOverviewError implements ListOverviewError {
  const _$ListOverviewError(this.msg, {this.data}) : assert(msg != null);

  @override
  final String msg;
  @override
  final OpenRequests$Query data;

  @override
  String toString() {
    return 'ListOverviewState.error(msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOverviewError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(data);

  @override
  $ListOverviewErrorCopyWith<ListOverviewError> get copyWith =>
      _$ListOverviewErrorCopyWithImpl<ListOverviewError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(OpenRequests$Query data),
    @required TResult loaded(OpenRequests$Query data),
    @required TResult error(String msg, OpenRequests$Query data),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(msg, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(OpenRequests$Query data),
    TResult loaded(OpenRequests$Query data),
    TResult error(String msg, OpenRequests$Query data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(msg, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ListOverviewLoading value),
    @required TResult loaded(ListOverviewLoaded value),
    @required TResult error(ListOverviewError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ListOverviewLoading value),
    TResult loaded(ListOverviewLoaded value),
    TResult error(ListOverviewError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListOverviewError implements ListOverviewState {
  const factory ListOverviewError(String msg, {OpenRequests$Query data}) =
      _$ListOverviewError;

  String get msg;
  @override
  OpenRequests$Query get data;
  @override
  $ListOverviewErrorCopyWith<ListOverviewError> get copyWith;
}
