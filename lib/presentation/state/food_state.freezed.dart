// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodState {
  String get documentId => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  DateTime get expiration => throw _privateConstructorUsedError;

  Uint8List get image => throw _privateConstructorUsedError;

  String get location => throw _privateConstructorUsedError;

  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodStateCopyWith<FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) =
      _$FoodStateCopyWithImpl<$Res, FoodState>;

  @useResult
  $Res call(
      {String documentId,
      String name,
      DateTime expiration,
      Uint8List image,
      String location,
      Status status});
}

/// @nodoc
class _$FoodStateCopyWithImpl<$Res, $Val extends FoodState>
    implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? name = null,
    Object? expiration = null,
    Object? image = null,
    Object? location = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodStateCopyWith<$Res> implements $FoodStateCopyWith<$Res> {
  factory _$$_FoodStateCopyWith(
          _$_FoodState value, $Res Function(_$_FoodState) then) =
      __$$_FoodStateCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String documentId,
      String name,
      DateTime expiration,
      Uint8List image,
      String location,
      Status status});
}

/// @nodoc
class __$$_FoodStateCopyWithImpl<$Res>
    extends _$FoodStateCopyWithImpl<$Res, _$_FoodState>
    implements _$$_FoodStateCopyWith<$Res> {
  __$$_FoodStateCopyWithImpl(
      _$_FoodState _value, $Res Function(_$_FoodState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? name = null,
    Object? expiration = null,
    Object? image = null,
    Object? location = null,
    Object? status = null,
  }) {
    return _then(_$_FoodState(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_FoodState implements _FoodState {
  _$_FoodState(
      {required this.documentId,
      required this.name,
      required this.expiration,
      required this.image,
      required this.location,
      required this.status});

  @override
  final String documentId;
  @override
  final String name;
  @override
  final DateTime expiration;
  @override
  final Uint8List image;
  @override
  final String location;
  @override
  final Status status;

  @override
  String toString() {
    return 'FoodState(documentId: $documentId, name: $name, expiration: $expiration, image: $image, location: $location, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodState &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentId, name, expiration,
      const DeepCollectionEquality().hash(image), location, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith =>
      __$$_FoodStateCopyWithImpl<_$_FoodState>(this, _$identity);
}

abstract class _FoodState implements FoodState {
  factory _FoodState(
      {required final String documentId,
      required final String name,
      required final DateTime expiration,
      required final Uint8List image,
      required final String location,
      required final Status status}) = _$_FoodState;

  @override
  String get documentId;

  @override
  String get name;

  @override
  DateTime get expiration;

  @override
  Uint8List get image;

  @override
  String get location;

  @override
  Status get status;

  @override
  @JsonKey(ignore: true)
  _$$_FoodStateCopyWith<_$_FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}
