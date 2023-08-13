import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/usecase/get_foods_usecase.dart';
import 'package:rememberme/domain/usecase/update_food_usecase.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../../domain/entity/food.dart';
import '../../domain/value/status.dart';

final foodListNotifierProvider =
    StateNotifierProvider<FoodListNotifier, AsyncValue<List<FoodState>>>(
  (ref) => FoodListNotifier(
      getFoodsUsecase: ref.read(getFoodsUsecaseProvider),
      updateFoodUsecase: ref.read(updateFoodUsecaseProvider)),
);

class FoodListNotifier extends StateNotifier<AsyncValue<List<FoodState>>> {
  FoodListNotifier(
      {required GetFoodsUsecase getFoodsUsecase,
      required UpdateFoodUsecase updateFoodUsecase})
      : _getFoodsUsecase = getFoodsUsecase,
        _updateFoodUsecase = updateFoodUsecase,
        super(const AsyncLoading()) {
    fetch();
  }

  final GetFoodsUsecase _getFoodsUsecase;
  final UpdateFoodUsecase _updateFoodUsecase;

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      final res = await _getFoodsUsecase.execute();
      return res.map((e) => FoodState.fromEntity(e)).toList();
    });
  }

  Future<void> updateItem(FoodState foodState, Status updatedStatus) async {
    // execute post food api for functions.
    await _updateFoodUsecase.execute(foodState, updatedStatus);

    // update local state
    final foodStates = List<FoodState>.from(state.value ?? []);
    final updatedFoodStates = foodStates.map((element) {
      if (element.documentId == foodState.documentId) {
        return FoodState.fromEntity(Food(
            documentId: foodState.documentId,
            name: foodState.name,
            expiration: foodState.expiration,
            image: foodState.image,
            status: updatedStatus,
            location: foodState.location));
      } else {
        return element;
      }
    }).toList();
    state = AsyncData(updatedFoodStates);
  }
}
