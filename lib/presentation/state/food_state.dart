import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/food.dart';
import '../../domain/value/status.dart';

part 'food_state.freezed.dart';

@freezed
class FoodState with _$FoodState {
  factory FoodState({
    required String documentId,
    required String name,
    required DateTime expiration,
    required Uint8List image,
    required String location,
    required Status status,
  }) = _FoodState;

  factory FoodState.fromEntity(Food food) {
    return FoodState(
        documentId: food.documentId,
        name: food.name,
        expiration: food.expiration,
        image: food.image,
        location: food.location,
        status: food.status);
  }
}
