import 'package:rememberme/infrastructure/model/food_data.dart';

class FoodResponse {
  final String documentId;
  final FoodData data;

  FoodResponse({
    required this.documentId,
    required this.data,
  });

  factory FoodResponse.fromJson(json) {
    return FoodResponse(
      documentId: json['documentId'],
      data: FoodData.fromJson(json['data']),
    );
  }
}
