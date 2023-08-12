import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

import '../model/danger_list_api_response.dart';
import 'foods_api_datasource_impl.dart';

final foodsApiDatasourceProvider = Provider<FoodsApiDatasource>(
  (ref) => FoodsApiDatasourceImpl(),
);

abstract class FoodsApiDatasource {
  Future<DangerListApiResponse> getFoods();
  Future<String> postFood(RegisterFoodState registerFoodState);
}
