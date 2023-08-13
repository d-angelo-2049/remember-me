import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../../application/usecase/update_food_usecase_impl.dart';
import '../repository/foods_repository.dart';
import '../value/status.dart';

final updateFoodUsecaseProvider = Provider<UpdateFoodUsecase>(
  (ref) => UpdateFoodUsecaseImpl(
    foodsRepository: ref.watch(foodsRepositoryProvider),
  ),
);

abstract class UpdateFoodUsecase {
  Future<String> execute(FoodState foodState, Status updatedStatus);
}
