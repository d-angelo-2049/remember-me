import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/infrastructure/model/food_response.dart';

import '../../infrastructure/factory/food_factory_impl.dart';
import '../entity/food.dart';
import '../value/status.dart';

final foodFactoryProvider = Provider<FoodFactory>(
  (ref) => FoodFactoryImpl(),
);

abstract class FoodFactory {
  Food create(
      {required String documentId,
      required String name,
      required DateTime expiration,
      required Uint8List image,
      required String location,
      required Status status});

  Food createModel(FoodResponse foodResponse);
}
