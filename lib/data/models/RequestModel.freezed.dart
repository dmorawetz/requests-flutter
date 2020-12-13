// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'RequestModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestModelTearOff {
  const _$RequestModelTearOff();

// ignore: unused_element
  _RequestModel call(
      {Status status = Status.kw$NEW,
      String title = "",
      String description = "",
      Priority priority = Priority.low,
      String creator = "",
      String creatorEmail = "",
      DateTime dueDate,
      double timeEstimation = 0.0}) {
    return _RequestModel(
      status: status,
      title: title,
      description: description,
      priority: priority,
      creator: creator,
      creatorEmail: creatorEmail,
      dueDate: dueDate,
      timeEstimation: timeEstimation,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestModel = _$RequestModelTearOff();

/// @nodoc
mixin _$RequestModel {
  Status get status;
  String get title;
  String get description;
  Priority get priority;
  String get creator;
  String get creatorEmail;
  DateTime get dueDate;
  double get timeEstimation;

  $RequestModelCopyWith<RequestModel> get copyWith;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      String title,
      String description,
      Priority priority,
      String creator,
      String creatorEmail,
      DateTime dueDate,
      double timeEstimation});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res> implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  final RequestModel _value;
  // ignore: unused_field
  final $Res Function(RequestModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object title = freezed,
    Object description = freezed,
    Object priority = freezed,
    Object creator = freezed,
    Object creatorEmail = freezed,
    Object dueDate = freezed,
    Object timeEstimation = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as Status,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      priority: priority == freezed ? _value.priority : priority as Priority,
      creator: creator == freezed ? _value.creator : creator as String,
      creatorEmail: creatorEmail == freezed
          ? _value.creatorEmail
          : creatorEmail as String,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      timeEstimation: timeEstimation == freezed
          ? _value.timeEstimation
          : timeEstimation as double,
    ));
  }
}

/// @nodoc
abstract class _$RequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$RequestModelCopyWith(
          _RequestModel value, $Res Function(_RequestModel) then) =
      __$RequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      String title,
      String description,
      Priority priority,
      String creator,
      String creatorEmail,
      DateTime dueDate,
      double timeEstimation});
}

/// @nodoc
class __$RequestModelCopyWithImpl<$Res> extends _$RequestModelCopyWithImpl<$Res>
    implements _$RequestModelCopyWith<$Res> {
  __$RequestModelCopyWithImpl(
      _RequestModel _value, $Res Function(_RequestModel) _then)
      : super(_value, (v) => _then(v as _RequestModel));

  @override
  _RequestModel get _value => super._value as _RequestModel;

  @override
  $Res call({
    Object status = freezed,
    Object title = freezed,
    Object description = freezed,
    Object priority = freezed,
    Object creator = freezed,
    Object creatorEmail = freezed,
    Object dueDate = freezed,
    Object timeEstimation = freezed,
  }) {
    return _then(_RequestModel(
      status: status == freezed ? _value.status : status as Status,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      priority: priority == freezed ? _value.priority : priority as Priority,
      creator: creator == freezed ? _value.creator : creator as String,
      creatorEmail: creatorEmail == freezed
          ? _value.creatorEmail
          : creatorEmail as String,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      timeEstimation: timeEstimation == freezed
          ? _value.timeEstimation
          : timeEstimation as double,
    ));
  }
}

/// @nodoc
class _$_RequestModel implements _RequestModel {
  const _$_RequestModel(
      {this.status = Status.kw$NEW,
      this.title = "",
      this.description = "",
      this.priority = Priority.low,
      this.creator = "",
      this.creatorEmail = "",
      this.dueDate,
      this.timeEstimation = 0.0})
      : assert(status != null),
        assert(title != null),
        assert(description != null),
        assert(priority != null),
        assert(creator != null),
        assert(creatorEmail != null),
        assert(timeEstimation != null);

  @JsonKey(defaultValue: Status.kw$NEW)
  @override
  final Status status;
  @JsonKey(defaultValue: "")
  @override
  final String title;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: Priority.low)
  @override
  final Priority priority;
  @JsonKey(defaultValue: "")
  @override
  final String creator;
  @JsonKey(defaultValue: "")
  @override
  final String creatorEmail;
  @override
  final DateTime dueDate;
  @JsonKey(defaultValue: 0.0)
  @override
  final double timeEstimation;

  @override
  String toString() {
    return 'RequestModel(status: $status, title: $title, description: $description, priority: $priority, creator: $creator, creatorEmail: $creatorEmail, dueDate: $dueDate, timeEstimation: $timeEstimation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.creatorEmail, creatorEmail) ||
                const DeepCollectionEquality()
                    .equals(other.creatorEmail, creatorEmail)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.timeEstimation, timeEstimation) ||
                const DeepCollectionEquality()
                    .equals(other.timeEstimation, timeEstimation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(creatorEmail) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(timeEstimation);

  @override
  _$RequestModelCopyWith<_RequestModel> get copyWith =>
      __$RequestModelCopyWithImpl<_RequestModel>(this, _$identity);
}

abstract class _RequestModel implements RequestModel {
  const factory _RequestModel(
      {Status status,
      String title,
      String description,
      Priority priority,
      String creator,
      String creatorEmail,
      DateTime dueDate,
      double timeEstimation}) = _$_RequestModel;

  @override
  Status get status;
  @override
  String get title;
  @override
  String get description;
  @override
  Priority get priority;
  @override
  String get creator;
  @override
  String get creatorEmail;
  @override
  DateTime get dueDate;
  @override
  double get timeEstimation;
  @override
  _$RequestModelCopyWith<_RequestModel> get copyWith;
}
