import 'dart:convert';
import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/domain/factory/food_factory.dart';
import 'package:rememberme/domain/value/status.dart';
import 'package:rememberme/presentation/state/register_food_state.dart';

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
        // ここで Parse できる形式例 -> 2023/08/02(水)
        expiration: DateFormat('yyyy/MM/dd(E)', "ja_JP")
            .parse(foodResponse.data.expiration),
        image: base64Decode(foodResponse.data.imageString),
        location: foodResponse.data.location,
        status: foodResponse.data.status);
  }

  @override
  Future<Food> createRegisterModel(RegisterFoodState registerFoodState) async {
    Uint8List? result = await FlutterImageCompress.compressWithFile(
        registerFoodState.imagePath,
        minHeight: 256,
        minWidth: 256);

    return Food(
        documentId: '',
        name: registerFoodState.name,
        expiration: DateFormat('yyyy/MM/dd(E)', "ja_JP")
            .parse(registerFoodState.expiration),
        image: result!,
        location: registerFoodState.location,
        status: Status.unconsume);
  }
}
