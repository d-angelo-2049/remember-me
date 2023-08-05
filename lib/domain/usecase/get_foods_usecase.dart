import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/repository/foods_repository.dart';

import '../../application/usecase/get_foods_usecase_impl.dart';
import '../entity/food.dart';

final getFoodsUsecaseProvider = Provider<GetFoodsUsecase>(
  (ref) => GetFoodsUsecaseImpl(
    foodRepository: ref.watch(foodsRepositoryProvider),
  ),
);

abstract class GetFoodsUsecase {
  Future<List<Food>> execute();
}
