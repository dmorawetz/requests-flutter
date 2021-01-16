// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestFormStateTearOff {
  const _$RequestFormStateTearOff();

// ignore: unused_element
  RequestFormInitial initial(RequestModel req) {
    return RequestFormInitial(
      req,
    );
  }

// ignore: unused_element
  NameChanged nameChanged(RequestModel req) {
    return NameChanged(
      req,
    );
  }

// ignore: unused_element
  DescriptionChanged descriptionChanged(RequestModel req) {
    return DescriptionChanged(
      req,
    );
  }

// ignore: unused_element
  DateChanged dateChanged(RequestModel req) {
    return DateChanged(
      req,
    );
  }

// ignore: unused_element
  PriorityChanged priorityChanged(RequestModel req) {
    return PriorityChanged(
      req,
    );
  }

// ignore: unused_element
  TimeEstimationChanged timeEstimationChanged(RequestModel req) {
    return TimeEstimationChanged(
      req,
    );
  }

// ignore: unused_element
  ImagesChanged imagesChanged(RequestModel req) {
    return ImagesChanged(
      req,
    );
  }

// ignore: unused_element
  AudioChanged audioChanged(RequestModel req) {
    return AudioChanged(
      req,
    );
  }

// ignore: unused_element
  Saved saved(RequestModel req) {
    return Saved(
      req,
    );
  }

// ignore: unused_element
  RequestFormStateError error(RequestModel req, String msg) {
    return RequestFormStateError(
      req,
      msg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestFormState = _$RequestFormStateTearOff();

/// @nodoc
mixin _$RequestFormState {
  RequestModel get req;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  });

  $RequestFormStateCopyWith<RequestFormState> get copyWith;
}

/// @nodoc
abstract class $RequestFormStateCopyWith<$Res> {
  factory $RequestFormStateCopyWith(
          RequestFormState value, $Res Function(RequestFormState) then) =
      _$RequestFormStateCopyWithImpl<$Res>;
  $Res call({RequestModel req});

  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$RequestFormStateCopyWithImpl<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  _$RequestFormStateCopyWithImpl(this._value, this._then);

  final RequestFormState _value;
  // ignore: unused_field
  final $Res Function(RequestFormState) _then;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(_value.copyWith(
      req: req == freezed ? _value.req : req as RequestModel,
    ));
  }

  @override
  $RequestModelCopyWith<$Res> get req {
    if (_value.req == null) {
      return null;
    }
    return $RequestModelCopyWith<$Res>(_value.req, (value) {
      return _then(_value.copyWith(req: value));
    });
  }
}

/// @nodoc
abstract class $RequestFormInitialCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $RequestFormInitialCopyWith(
          RequestFormInitial value, $Res Function(RequestFormInitial) then) =
      _$RequestFormInitialCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$RequestFormInitialCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $RequestFormInitialCopyWith<$Res> {
  _$RequestFormInitialCopyWithImpl(
      RequestFormInitial _value, $Res Function(RequestFormInitial) _then)
      : super(_value, (v) => _then(v as RequestFormInitial));

  @override
  RequestFormInitial get _value => super._value as RequestFormInitial;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(RequestFormInitial(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$RequestFormInitial extends RequestFormInitial {
  const _$RequestFormInitial(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.initial(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestFormInitial &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $RequestFormInitialCopyWith<RequestFormInitial> get copyWith =>
      _$RequestFormInitialCopyWithImpl<RequestFormInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return initial(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RequestFormInitial extends RequestFormState {
  const RequestFormInitial._() : super._();
  const factory RequestFormInitial(RequestModel req) = _$RequestFormInitial;

  @override
  RequestModel get req;
  @override
  $RequestFormInitialCopyWith<RequestFormInitial> get copyWith;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(NameChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$NameChanged extends NameChanged {
  const _$NameChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.nameChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return nameChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged extends RequestFormState {
  const NameChanged._() : super._();
  const factory NameChanged(RequestModel req) = _$NameChanged;

  @override
  RequestModel get req;
  @override
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $DescriptionChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(DescriptionChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$DescriptionChanged extends DescriptionChanged {
  const _$DescriptionChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.descriptionChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DescriptionChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return descriptionChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged extends RequestFormState {
  const DescriptionChanged._() : super._();
  const factory DescriptionChanged(RequestModel req) = _$DescriptionChanged;

  @override
  RequestModel get req;
  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class $DateChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $DateChangedCopyWith(
          DateChanged value, $Res Function(DateChanged) then) =
      _$DateChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$DateChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $DateChangedCopyWith<$Res> {
  _$DateChangedCopyWithImpl(
      DateChanged _value, $Res Function(DateChanged) _then)
      : super(_value, (v) => _then(v as DateChanged));

  @override
  DateChanged get _value => super._value as DateChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(DateChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$DateChanged extends DateChanged {
  const _$DateChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.dateChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $DateChangedCopyWith<DateChanged> get copyWith =>
      _$DateChangedCopyWithImpl<DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return dateChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged extends RequestFormState {
  const DateChanged._() : super._();
  const factory DateChanged(RequestModel req) = _$DateChanged;

  @override
  RequestModel get req;
  @override
  $DateChangedCopyWith<DateChanged> get copyWith;
}

/// @nodoc
abstract class $PriorityChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $PriorityChangedCopyWith(
          PriorityChanged value, $Res Function(PriorityChanged) then) =
      _$PriorityChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$PriorityChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $PriorityChangedCopyWith<$Res> {
  _$PriorityChangedCopyWithImpl(
      PriorityChanged _value, $Res Function(PriorityChanged) _then)
      : super(_value, (v) => _then(v as PriorityChanged));

  @override
  PriorityChanged get _value => super._value as PriorityChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(PriorityChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$PriorityChanged extends PriorityChanged {
  const _$PriorityChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.priorityChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriorityChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $PriorityChangedCopyWith<PriorityChanged> get copyWith =>
      _$PriorityChangedCopyWithImpl<PriorityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return priorityChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priorityChanged != null) {
      return priorityChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class PriorityChanged extends RequestFormState {
  const PriorityChanged._() : super._();
  const factory PriorityChanged(RequestModel req) = _$PriorityChanged;

  @override
  RequestModel get req;
  @override
  $PriorityChangedCopyWith<PriorityChanged> get copyWith;
}

/// @nodoc
abstract class $TimeEstimationChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $TimeEstimationChangedCopyWith(TimeEstimationChanged value,
          $Res Function(TimeEstimationChanged) then) =
      _$TimeEstimationChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$TimeEstimationChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $TimeEstimationChangedCopyWith<$Res> {
  _$TimeEstimationChangedCopyWithImpl(
      TimeEstimationChanged _value, $Res Function(TimeEstimationChanged) _then)
      : super(_value, (v) => _then(v as TimeEstimationChanged));

  @override
  TimeEstimationChanged get _value => super._value as TimeEstimationChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(TimeEstimationChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$TimeEstimationChanged extends TimeEstimationChanged {
  const _$TimeEstimationChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.timeEstimationChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeEstimationChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $TimeEstimationChangedCopyWith<TimeEstimationChanged> get copyWith =>
      _$TimeEstimationChangedCopyWithImpl<TimeEstimationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return timeEstimationChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeEstimationChanged != null) {
      return timeEstimationChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return timeEstimationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeEstimationChanged != null) {
      return timeEstimationChanged(this);
    }
    return orElse();
  }
}

abstract class TimeEstimationChanged extends RequestFormState {
  const TimeEstimationChanged._() : super._();
  const factory TimeEstimationChanged(RequestModel req) =
      _$TimeEstimationChanged;

  @override
  RequestModel get req;
  @override
  $TimeEstimationChangedCopyWith<TimeEstimationChanged> get copyWith;
}

/// @nodoc
abstract class $ImagesChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $ImagesChangedCopyWith(
          ImagesChanged value, $Res Function(ImagesChanged) then) =
      _$ImagesChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$ImagesChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $ImagesChangedCopyWith<$Res> {
  _$ImagesChangedCopyWithImpl(
      ImagesChanged _value, $Res Function(ImagesChanged) _then)
      : super(_value, (v) => _then(v as ImagesChanged));

  @override
  ImagesChanged get _value => super._value as ImagesChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(ImagesChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$ImagesChanged extends ImagesChanged {
  const _$ImagesChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.imagesChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImagesChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $ImagesChangedCopyWith<ImagesChanged> get copyWith =>
      _$ImagesChangedCopyWithImpl<ImagesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return imagesChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return imagesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(this);
    }
    return orElse();
  }
}

abstract class ImagesChanged extends RequestFormState {
  const ImagesChanged._() : super._();
  const factory ImagesChanged(RequestModel req) = _$ImagesChanged;

  @override
  RequestModel get req;
  @override
  $ImagesChangedCopyWith<ImagesChanged> get copyWith;
}

/// @nodoc
abstract class $AudioChangedCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $AudioChangedCopyWith(
          AudioChanged value, $Res Function(AudioChanged) then) =
      _$AudioChangedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$AudioChangedCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $AudioChangedCopyWith<$Res> {
  _$AudioChangedCopyWithImpl(
      AudioChanged _value, $Res Function(AudioChanged) _then)
      : super(_value, (v) => _then(v as AudioChanged));

  @override
  AudioChanged get _value => super._value as AudioChanged;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(AudioChanged(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$AudioChanged extends AudioChanged {
  const _$AudioChanged(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.audioChanged(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AudioChanged &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $AudioChangedCopyWith<AudioChanged> get copyWith =>
      _$AudioChangedCopyWithImpl<AudioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return audioChanged(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (audioChanged != null) {
      return audioChanged(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return audioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (audioChanged != null) {
      return audioChanged(this);
    }
    return orElse();
  }
}

abstract class AudioChanged extends RequestFormState {
  const AudioChanged._() : super._();
  const factory AudioChanged(RequestModel req) = _$AudioChanged;

  @override
  RequestModel get req;
  @override
  $AudioChangedCopyWith<AudioChanged> get copyWith;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> implements $RequestFormStateCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$RequestFormStateCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;

  @override
  $Res call({
    Object req = freezed,
  }) {
    return _then(Saved(
      req == freezed ? _value.req : req as RequestModel,
    ));
  }
}

/// @nodoc
class _$Saved extends Saved {
  const _$Saved(this.req)
      : assert(req != null),
        super._();

  @override
  final RequestModel req;

  @override
  String toString() {
    return 'RequestFormState.saved(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Saved &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(req);

  @override
  $SavedCopyWith<Saved> get copyWith =>
      _$SavedCopyWithImpl<Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return saved(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved extends RequestFormState {
  const Saved._() : super._();
  const factory Saved(RequestModel req) = _$Saved;

  @override
  RequestModel get req;
  @override
  $SavedCopyWith<Saved> get copyWith;
}

/// @nodoc
abstract class $RequestFormStateErrorCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory $RequestFormStateErrorCopyWith(RequestFormStateError value,
          $Res Function(RequestFormStateError) then) =
      _$RequestFormStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({RequestModel req, String msg});

  @override
  $RequestModelCopyWith<$Res> get req;
}

/// @nodoc
class _$RequestFormStateErrorCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements $RequestFormStateErrorCopyWith<$Res> {
  _$RequestFormStateErrorCopyWithImpl(
      RequestFormStateError _value, $Res Function(RequestFormStateError) _then)
      : super(_value, (v) => _then(v as RequestFormStateError));

  @override
  RequestFormStateError get _value => super._value as RequestFormStateError;

  @override
  $Res call({
    Object req = freezed,
    Object msg = freezed,
  }) {
    return _then(RequestFormStateError(
      req == freezed ? _value.req : req as RequestModel,
      msg == freezed ? _value.msg : msg as String,
    ));
  }
}

/// @nodoc
class _$RequestFormStateError extends RequestFormStateError {
  const _$RequestFormStateError(this.req, this.msg)
      : assert(req != null),
        assert(msg != null),
        super._();

  @override
  final RequestModel req;
  @override
  final String msg;

  @override
  String toString() {
    return 'RequestFormState.error(req: $req, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestFormStateError &&
            (identical(other.req, req) ||
                const DeepCollectionEquality().equals(other.req, req)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(req) ^
      const DeepCollectionEquality().hash(msg);

  @override
  $RequestFormStateErrorCopyWith<RequestFormStateError> get copyWith =>
      _$RequestFormStateErrorCopyWithImpl<RequestFormStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(RequestModel req),
    @required TResult nameChanged(RequestModel req),
    @required TResult descriptionChanged(RequestModel req),
    @required TResult dateChanged(RequestModel req),
    @required TResult priorityChanged(RequestModel req),
    @required TResult timeEstimationChanged(RequestModel req),
    @required TResult imagesChanged(RequestModel req),
    @required TResult audioChanged(RequestModel req),
    @required TResult saved(RequestModel req),
    @required TResult error(RequestModel req, String msg),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return error(req, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(RequestModel req),
    TResult nameChanged(RequestModel req),
    TResult descriptionChanged(RequestModel req),
    TResult dateChanged(RequestModel req),
    TResult priorityChanged(RequestModel req),
    TResult timeEstimationChanged(RequestModel req),
    TResult imagesChanged(RequestModel req),
    TResult audioChanged(RequestModel req),
    TResult saved(RequestModel req),
    TResult error(RequestModel req, String msg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(req, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(RequestFormInitial value),
    @required TResult nameChanged(NameChanged value),
    @required TResult descriptionChanged(DescriptionChanged value),
    @required TResult dateChanged(DateChanged value),
    @required TResult priorityChanged(PriorityChanged value),
    @required TResult timeEstimationChanged(TimeEstimationChanged value),
    @required TResult imagesChanged(ImagesChanged value),
    @required TResult audioChanged(AudioChanged value),
    @required TResult saved(Saved value),
    @required TResult error(RequestFormStateError value),
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
    assert(saved != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(RequestFormInitial value),
    TResult nameChanged(NameChanged value),
    TResult descriptionChanged(DescriptionChanged value),
    TResult dateChanged(DateChanged value),
    TResult priorityChanged(PriorityChanged value),
    TResult timeEstimationChanged(TimeEstimationChanged value),
    TResult imagesChanged(ImagesChanged value),
    TResult audioChanged(AudioChanged value),
    TResult saved(Saved value),
    TResult error(RequestFormStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestFormStateError extends RequestFormState {
  const RequestFormStateError._() : super._();
  const factory RequestFormStateError(RequestModel req, String msg) =
      _$RequestFormStateError;

  @override
  RequestModel get req;
  String get msg;
  @override
  $RequestFormStateErrorCopyWith<RequestFormStateError> get copyWith;
}
