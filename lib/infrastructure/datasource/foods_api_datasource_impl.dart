import 'package:cloud_functions/cloud_functions.dart';
import 'package:rememberme/infrastructure/datasource/foods_api_datasource.dart';

import '../../presentation/state/register_food_state.dart';
import '../model/danger_list_api_response.dart';

class FoodsApiDatasourceImpl extends FoodsApiDatasource {
  @override
  Future<DangerListApiResponse> getFoods() async {
    HttpsCallable callable =
        FirebaseFunctions.instanceFor(region: 'us-central1')
            .httpsCallable('dangerList');
    final result = await callable.call();
    return DangerListApiResponse.fromJson(result.data);
  }

  @override
  Future<String> postFood(RegisterFoodState registerFoodState) async {
    HttpsCallable callable =
    FirebaseFunctions.instanceFor(region: 'us-central1')
    .httpsCallable('postFood');
    final result = await callable.call();
    return result.data['documentId'];
  }
}
