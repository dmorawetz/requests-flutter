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
class _$RequestFormInitial implements RequestFormInitial {
  const _$RequestFormInitial(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RequestFormInitial implements RequestFormState {
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
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RequestFormState {
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
class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements RequestFormState {
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
class _$DateChanged implements DateChanged {
  const _$DateChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged implements RequestFormState {
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
class _$PriorityChanged implements PriorityChanged {
  const _$PriorityChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class PriorityChanged implements RequestFormState {
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
class _$TimeEstimationChanged implements TimeEstimationChanged {
  const _$TimeEstimationChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeEstimationChanged != null) {
      return timeEstimationChanged(this);
    }
    return orElse();
  }
}

abstract class TimeEstimationChanged implements RequestFormState {
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
class _$ImagesChanged implements ImagesChanged {
  const _$ImagesChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(this);
    }
    return orElse();
  }
}

abstract class ImagesChanged implements RequestFormState {
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
class _$AudioChanged implements AudioChanged {
  const _$AudioChanged(this.req) : assert(req != null);

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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
  }) {
    assert(initial != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(priorityChanged != null);
    assert(timeEstimationChanged != null);
    assert(imagesChanged != null);
    assert(audioChanged != null);
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
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (audioChanged != null) {
      return audioChanged(this);
    }
    return orElse();
  }
}

abstract class AudioChanged implements RequestFormState {
  const factory AudioChanged(RequestModel req) = _$AudioChanged;

  @override
  RequestModel get req;
  @override
  $AudioChangedCopyWith<AudioChanged> get copyWith;
}
