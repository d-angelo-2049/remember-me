import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/factory/food_factory.dart';
import 'package:rememberme/domain/repository/foods_repository.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

import '../datasource/foods_api_datasource.dart';

class FoodsRepositoryImpl extends FoodsRepository {
  final FoodsApiDatasource _foodsApiDatasource;
  final FoodFactory _foodFactory;

  FoodsRepositoryImpl({
    required FoodsApiDatasource foodsApiDatasource,
    required FoodFactory foodFactory,
  })  : _foodsApiDatasource = foodsApiDatasource,
        _foodFactory = foodFactory;

  @override
  Future<List<Food>> findAll() async {
    final resp = await _foodsApiDatasource.getFoods();
    return resp.result
        .map(
          (e) => _foodFactory.createModel(e),
        )
        .toList();
  }

  @override
  Future<String> postItem(RegisterFoodState registerFoodState) async {
    final food = await _foodFactory.createRegisterModel(registerFoodState);
    return await _foodsApiDatasource.postFood(food);
  }
}
