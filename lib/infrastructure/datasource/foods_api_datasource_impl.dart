import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rememberme/infrastructure/datasource/foods_api_datasource.dart';

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
}
