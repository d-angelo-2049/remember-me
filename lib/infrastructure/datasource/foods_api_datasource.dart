import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/food.dart';
import '../model/danger_list_api_response.dart';
import 'foods_api_datasource_impl.dart';

final foodsApiDatasourceProvider = Provider<FoodsApiDatasource>(
  (ref) => FoodsApiDatasourceImpl(),
);

abstract class FoodsApiDatasource {
  Future<DangerListApiResponse> getFoods();

  Future<String> postFood(Food food);
}
