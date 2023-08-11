// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_food_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFoodState {
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  DateTime get expiration => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFoodStateCopyWith<RegisterFoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFoodStateCopyWith<$Res> {
  factory $RegisterFoodStateCopyWith(
          RegisterFoodState value, $Res Function(RegisterFoodState) then) =
      _$RegisterFoodStateCopyWithImpl<$Res, RegisterFoodState>;
  @useResult
  $Res call(
      {String name, String imagePath, DateTime expiration, String location});
}

/// @nodoc
class _$RegisterFoodStateCopyWithImpl<$Res, $Val extends RegisterFoodState>
    implements $RegisterFoodStateCopyWith<$Res> {
  _$RegisterFoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? expiration = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterFoodStateCopyWith<$Res>
    implements $RegisterFoodStateCopyWith<$Res> {
  factory _$$_RegisterFoodStateCopyWith(_$_RegisterFoodState value,
          $Res Function(_$_RegisterFoodState) then) =
      __$$_RegisterFoodStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String imagePath, DateTime expiration, String location});
}

/// @nodoc
class __$$_RegisterFoodStateCopyWithImpl<$Res>
    extends _$RegisterFoodStateCopyWithImpl<$Res, _$_RegisterFoodState>
    implements _$$_RegisterFoodStateCopyWith<$Res> {
  __$$_RegisterFoodStateCopyWithImpl(
      _$_RegisterFoodState _value, $Res Function(_$_RegisterFoodState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? expiration = null,
    Object? location = null,
  }) {
    return _then(_$_RegisterFoodState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterFoodState implements _RegisterFoodState {
  _$_RegisterFoodState(
      {required this.name,
      required this.imagePath,
      required this.expiration,
      required this.location});

  @override
  final String name;
  @override
  final String imagePath;
  @override
  final DateTime expiration;
  @override
  final String location;

  @override
  String toString() {
    return 'RegisterFoodState(name: $name, imagePath: $imagePath, expiration: $expiration, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFoodState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, imagePath, expiration, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFoodStateCopyWith<_$_RegisterFoodState> get copyWith =>
      __$$_RegisterFoodStateCopyWithImpl<_$_RegisterFoodState>(
          this, _$identity);
}

abstract class _RegisterFoodState implements RegisterFoodState {
  factory _RegisterFoodState(
      {required final String name,
      required final String imagePath,
      required final DateTime expiration,
      required final String location}) = _$_RegisterFoodState;

  @override
  String get name;
  @override
  String get imagePath;
  @override
  DateTime get expiration;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFoodStateCopyWith<_$_RegisterFoodState> get copyWith =>
      throw _privateConstructorUsedError;
}
