import 'dart:convert';
import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/factory/food_factory.dart';
import 'package:rememberme/domain/value/status.dart';

import '../model/food_response.dart';

class FoodFactoryImpl extends FoodFactory {
  @override
  Food create(
      {required String documentId,
      required String name,
      required DateTime expiration,
      required Uint8List image,
      required String location,
      required Status status}) {
    return Food(
        documentId: documentId,
        name: name,
        expiration: expiration,
        image: image,
        location: location,
        status: status);
  }

  @override
  Food createModel(FoodResponse foodResponse) {
    return Food(
        documentId: foodResponse.documentId,
        name: foodResponse.data.name,
        // ここで Parse できる形式例 -> 2023/08/02(水) 19:17
        expiration: DateFormat('yyyy/MM/dd(E) HH:mm', "ja_JP")
            .parse(foodResponse.data.expiration),
        image: base64Decode(foodResponse.data.imageString),
        location: foodResponse.data.location,
        status: foodResponse.data.status);
  }
}
