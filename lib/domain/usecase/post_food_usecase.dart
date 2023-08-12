

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/usecase/post_food_usecase_impl.dart';
import '../../presentation/state/register_food_state.dart';
import '../repository/foods_repository.dart';


final getFoodsUsecaseProvider = Provider<PostFoodUsecase>(
      (ref) => PostFoodUsecaseImpl(
    foodsRepository: ref.watch(foodsRepositoryProvider),
  ),
);

abstract class PostFoodUsecase {
  Future<String> execute(RegisterFoodState registerFoodState);
}
