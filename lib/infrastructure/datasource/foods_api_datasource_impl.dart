import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:intl/intl.dart';
import 'package:rememberme/domain/entity/food.dart';
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

  @override
  Future<String> postFood(Food food) async {
    HttpsCallable callable =
        FirebaseFunctions.instanceFor(region: 'us-central1')
            .httpsCallable('postFood');

    final result = await callable.call(<String, dynamic>{
      'name': food.name,
      'expiration':
          DateFormat('yyyy/MM/dd(E)', "ja_JP").format(food.expiration),
      'location': food.location,
      'imageString': base64Encode(food.image),
      'status': food.status.value
    });

    return result.data['documentId'];
  }

  @override
  Future<String> updateFood(Food food) async {
    HttpsCallable callable =
        FirebaseFunctions.instanceFor(region: 'us-central1')
            .httpsCallable('updateFood');

    final result = await callable.call(<String, dynamic>{
      'documentId': food.documentId,
      // 'name': food.name,
      // 'expiration':
      // DateFormat('yyyy/MM/dd(E)', "ja_JP").format(food.expiration),
      // 'location': food.location,
      // 'imageString': base64Encode(food.image),
      'status': food.status.value
    });

    return result.data.toString();
  }
}
