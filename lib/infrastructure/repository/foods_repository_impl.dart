import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/factory/food_factory.dart';
import 'package:rememberme/domain/repository/foods_repository.dart';

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
}
