import 'food_response.dart';

class DangerListApiResponse {
  final List<FoodResponse> result;

  DangerListApiResponse({
    required this.result,
  });

  factory DangerListApiResponse.fromJson(List<dynamic> json) {
    return DangerListApiResponse(
      result: json.map<FoodResponse>((e) => FoodResponse.fromJson(e)).toList(),
    );
  }
}
