import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/usecase/get_foods_usecase.dart';

import '../../domain/repository/foods_repository.dart';

class GetFoodsUsecaseImpl extends GetFoodsUsecase {
  final FoodsRepository _foodsRepository;

  GetFoodsUsecaseImpl({
    required FoodsRepository foodRepository,
  }) : _foodsRepository = foodRepository;

  @override
  Future<List<Food>> execute() async {
    return _foodsRepository.findAll();
  }
}
