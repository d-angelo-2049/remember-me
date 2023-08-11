import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/usecase/get_foods_usecase.dart';
import 'package:rememberme/presentation/state/food_state.dart';

final foodListNotifierProvider =
    StateNotifierProvider<FoodListNotifier, AsyncValue<List<FoodState>>>(
  (ref) => FoodListNotifier(
    getFoodsUsecase: ref.read(getFoodsUsecaseProvider),
  ),
);

class FoodListNotifier extends StateNotifier<AsyncValue<List<FoodState>>> {
  FoodListNotifier({required GetFoodsUsecase getFoodsUsecase})
      : _getFoodsUsecase = getFoodsUsecase,
        super(const AsyncLoading()) {
    fetch();
  }

  final GetFoodsUsecase _getFoodsUsecase;

  Future<void> fetch() async {
    state = await AsyncValue.guard(() async {
      final res = await _getFoodsUsecase.execute();
      return res.map((e) => FoodState.fromEntity(e)).toList();
    });
  }
}
