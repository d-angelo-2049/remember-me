import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/factory/food_factory.dart';
import 'package:rememberme/infrastructure/datasource/foods_api_datasource.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

import '../../infrastructure/repository/foods_repository_impl.dart';

final foodsRepositoryProvider = Provider<FoodsRepository>(
  (ref) => FoodsRepositoryImpl(
      foodsApiDatasource: ref.watch(foodsApiDatasourceProvider),
      foodFactory: ref.watch(foodFactoryProvider)),
);

abstract class FoodsRepository {
  Future<List<Food>> findAll();
  Future<String> postItem(RegisterFoodState registerFoodState);
}
