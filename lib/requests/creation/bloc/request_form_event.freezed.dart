// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestFormEventTearOff {
  const _$RequestFormEventTearOff();

// ignore: unused_element
  Save save() {
    return const Save();
  }

// ignore: unused_element
  ChangeName changeName(String name) {
    return ChangeName(
      name,
    );
  }

// ignore: unused_element
  ChangeMail changeMail(String email) {
    return ChangeMail(
      email,
    );
  }

// ignore: unused_element
  ChangeDescription changeDescription(String description) {
    return ChangeDescription(
      description,
    );
  }

// ignore: unused_element
  ChangeDate changeDate(DateTime date) {
    return ChangeDate(
      date,
    );
  }

// ignore: unused_element
  ChangePriority changePriority(Priority priority) {
    return ChangePriority(
      priority,
    );
  }

// ignore: unused_element
  ChangeEstimation changeEstimation(double hours) {
    return ChangeEstimation(
      hours,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestFormEvent = _$RequestFormEventTearOff();

/// @nodoc
mixin _$RequestFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RequestFormEventCopyWith<$Res> {
  factory $RequestFormEventCopyWith(
          RequestFormEvent value, $Res Function(RequestFormEvent) then) =
      _$RequestFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFormEventCopyWithImpl<$Res>
    implements $RequestFormEventCopyWith<$Res> {
  _$RequestFormEventCopyWithImpl(this._value, this._then);

  final RequestFormEvent _value;
  // ignore: unused_field
  final $Res Function(RequestFormEvent) _then;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$RequestFormEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;
}

/// @nodoc
class _$Save implements Save {
  const _$Save();

  @override
  String toString() {
    return 'RequestFormEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements RequestFormEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $ChangeNameCopyWith<$Res> {
  factory $ChangeNameCopyWith(
          ChangeName value, $Res Function(ChangeName) then) =
      _$ChangeNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ChangeNameCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangeNameCopyWith<$Res> {
  _$ChangeNameCopyWithImpl(ChangeName _value, $Res Function(ChangeName) _then)
      : super(_value, (v) => _then(v as ChangeName));

  @override
  ChangeName get _value => super._value as ChangeName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(ChangeName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$ChangeName implements ChangeName {
  const _$ChangeName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'RequestFormEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $ChangeNameCopyWith<ChangeName> get copyWith =>
      _$ChangeNameCopyWithImpl<ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements RequestFormEvent {
  const factory ChangeName(String name) = _$ChangeName;

  String get name;
  $ChangeNameCopyWith<ChangeName> get copyWith;
}

/// @nodoc
abstract class $ChangeMailCopyWith<$Res> {
  factory $ChangeMailCopyWith(
          ChangeMail value, $Res Function(ChangeMail) then) =
      _$ChangeMailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ChangeMailCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangeMailCopyWith<$Res> {
  _$ChangeMailCopyWithImpl(ChangeMail _value, $Res Function(ChangeMail) _then)
      : super(_value, (v) => _then(v as ChangeMail));

  @override
  ChangeMail get _value => super._value as ChangeMail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ChangeMail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ChangeMail implements ChangeMail {
  const _$ChangeMail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RequestFormEvent.changeMail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeMail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ChangeMailCopyWith<ChangeMail> get copyWith =>
      _$ChangeMailCopyWithImpl<ChangeMail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeMail(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeMail != null) {
      return changeMail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeMail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeMail != null) {
      return changeMail(this);
    }
    return orElse();
  }
}

abstract class ChangeMail implements RequestFormEvent {
  const factory ChangeMail(String email) = _$ChangeMail;

  String get email;
  $ChangeMailCopyWith<ChangeMail> get copyWith;
}

/// @nodoc
abstract class $ChangeDescriptionCopyWith<$Res> {
  factory $ChangeDescriptionCopyWith(
          ChangeDescription value, $Res Function(ChangeDescription) then) =
      _$ChangeDescriptionCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$ChangeDescriptionCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangeDescriptionCopyWith<$Res> {
  _$ChangeDescriptionCopyWithImpl(
      ChangeDescription _value, $Res Function(ChangeDescription) _then)
      : super(_value, (v) => _then(v as ChangeDescription));

  @override
  ChangeDescription get _value => super._value as ChangeDescription;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(ChangeDescription(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$ChangeDescription implements ChangeDescription {
  const _$ChangeDescription(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'RequestFormEvent.changeDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeDescription &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $ChangeDescriptionCopyWith<ChangeDescription> get copyWith =>
      _$ChangeDescriptionCopyWithImpl<ChangeDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDescription != null) {
      return changeDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class ChangeDescription implements RequestFormEvent {
  const factory ChangeDescription(String description) = _$ChangeDescription;

  String get description;
  $ChangeDescriptionCopyWith<ChangeDescription> get copyWith;
}

/// @nodoc
abstract class $ChangeDateCopyWith<$Res> {
  factory $ChangeDateCopyWith(
          ChangeDate value, $Res Function(ChangeDate) then) =
      _$ChangeDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$ChangeDateCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangeDateCopyWith<$Res> {
  _$ChangeDateCopyWithImpl(ChangeDate _value, $Res Function(ChangeDate) _then)
      : super(_value, (v) => _then(v as ChangeDate));

  @override
  ChangeDate get _value => super._value as ChangeDate;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(ChangeDate(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$ChangeDate implements ChangeDate {
  const _$ChangeDate(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'RequestFormEvent.changeDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  $ChangeDateCopyWith<ChangeDate> get copyWith =>
      _$ChangeDateCopyWithImpl<ChangeDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeDate(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDate != null) {
      return changeDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class ChangeDate implements RequestFormEvent {
  const factory ChangeDate(DateTime date) = _$ChangeDate;

  DateTime get date;
  $ChangeDateCopyWith<ChangeDate> get copyWith;
}

/// @nodoc
abstract class $ChangePriorityCopyWith<$Res> {
  factory $ChangePriorityCopyWith(
          ChangePriority value, $Res Function(ChangePriority) then) =
      _$ChangePriorityCopyWithImpl<$Res>;
  $Res call({Priority priority});
}

/// @nodoc
class _$ChangePriorityCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangePriorityCopyWith<$Res> {
  _$ChangePriorityCopyWithImpl(
      ChangePriority _value, $Res Function(ChangePriority) _then)
      : super(_value, (v) => _then(v as ChangePriority));

  @override
  ChangePriority get _value => super._value as ChangePriority;

  @override
  $Res call({
    Object priority = freezed,
  }) {
    return _then(ChangePriority(
      priority == freezed ? _value.priority : priority as Priority,
    ));
  }
}

/// @nodoc
class _$ChangePriority implements ChangePriority {
  const _$ChangePriority(this.priority) : assert(priority != null);

  @override
  final Priority priority;

  @override
  String toString() {
    return 'RequestFormEvent.changePriority(priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePriority &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(priority);

  @override
  $ChangePriorityCopyWith<ChangePriority> get copyWith =>
      _$ChangePriorityCopyWithImpl<ChangePriority>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changePriority(priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePriority != null) {
      return changePriority(priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changePriority(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePriority != null) {
      return changePriority(this);
    }
    return orElse();
  }
}

abstract class ChangePriority implements RequestFormEvent {
  const factory ChangePriority(Priority priority) = _$ChangePriority;

  Priority get priority;
  $ChangePriorityCopyWith<ChangePriority> get copyWith;
}

/// @nodoc
abstract class $ChangeEstimationCopyWith<$Res> {
  factory $ChangeEstimationCopyWith(
          ChangeEstimation value, $Res Function(ChangeEstimation) then) =
      _$ChangeEstimationCopyWithImpl<$Res>;
  $Res call({double hours});
}

/// @nodoc
class _$ChangeEstimationCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements $ChangeEstimationCopyWith<$Res> {
  _$ChangeEstimationCopyWithImpl(
      ChangeEstimation _value, $Res Function(ChangeEstimation) _then)
      : super(_value, (v) => _then(v as ChangeEstimation));

  @override
  ChangeEstimation get _value => super._value as ChangeEstimation;

  @override
  $Res call({
    Object hours = freezed,
  }) {
    return _then(ChangeEstimation(
      hours == freezed ? _value.hours : hours as double,
    ));
  }
}

/// @nodoc
class _$ChangeEstimation implements ChangeEstimation {
  const _$ChangeEstimation(this.hours) : assert(hours != null);

  @override
  final double hours;

  @override
  String toString() {
    return 'RequestFormEvent.changeEstimation(hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeEstimation &&
            (identical(other.hours, hours) ||
                const DeepCollectionEquality().equals(other.hours, hours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hours);

  @override
  $ChangeEstimationCopyWith<ChangeEstimation> get copyWith =>
      _$ChangeEstimationCopyWithImpl<ChangeEstimation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult save(),
    @required TResult changeName(String name),
    @required TResult changeMail(String email),
    @required TResult changeDescription(String description),
    @required TResult changeDate(DateTime date),
    @required TResult changePriority(Priority priority),
    @required TResult changeEstimation(double hours),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeEstimation(hours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult save(),
    TResult changeName(String name),
    TResult changeMail(String email),
    TResult changeDescription(String description),
    TResult changeDate(DateTime date),
    TResult changePriority(Priority priority),
    TResult changeEstimation(double hours),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEstimation != null) {
      return changeEstimation(hours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult save(Save value),
    @required TResult changeName(ChangeName value),
    @required TResult changeMail(ChangeMail value),
    @required TResult changeDescription(ChangeDescription value),
    @required TResult changeDate(ChangeDate value),
    @required TResult changePriority(ChangePriority value),
    @required TResult changeEstimation(ChangeEstimation value),
  }) {
    assert(save != null);
    assert(changeName != null);
    assert(changeMail != null);
    assert(changeDescription != null);
    assert(changeDate != null);
    assert(changePriority != null);
    assert(changeEstimation != null);
    return changeEstimation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult save(Save value),
    TResult changeName(ChangeName value),
    TResult changeMail(ChangeMail value),
    TResult changeDescription(ChangeDescription value),
    TResult changeDate(ChangeDate value),
    TResult changePriority(ChangePriority value),
    TResult changeEstimation(ChangeEstimation value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeEstimation != null) {
      return changeEstimation(this);
    }
    return orElse();
  }
}

abstract class ChangeEstimation implements RequestFormEvent {
  const factory ChangeEstimation(double hours) = _$ChangeEstimation;

  double get hours;
  $ChangeEstimationCopyWith<ChangeEstimation> get copyWith;
}
