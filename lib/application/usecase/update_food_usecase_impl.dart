

import 'package:rememberme/domain/repository/foods_repository.dart';
import 'package:rememberme/domain/usecase/update_food_usecase.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../../domain/value/status.dart';

class UpdateFoodUsecaseImpl extends UpdateFoodUsecase {
  final FoodsRepository _foodsRepository;

  UpdateFoodUsecaseImpl({
    required FoodsRepository foodsRepository,
  }) : _foodsRepository = foodsRepository;



  @override
  Future<String> execute(FoodState foodState, Status updatedStatus) async {
    return await _foodsRepository.updateItem(foodState, updatedStatus);
  }
}
