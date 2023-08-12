
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_food_state.freezed.dart';

@freezed
class RegisterFoodState with _$RegisterFoodState {
  factory RegisterFoodState({
    required String name,
    required String imagePath,
    required String expiration,
    required String location,
  }) = _RegisterFoodState;

  factory RegisterFoodState.create(
      String name, String expiration, String location, String imagePath) {
    return RegisterFoodState(
        name: name,
        expiration: expiration,
        imagePath: imagePath,
        location: location);
  }
}
