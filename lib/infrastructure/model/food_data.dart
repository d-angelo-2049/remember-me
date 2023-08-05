import 'package:flutter/material.dart';

import '../../domain/value/status.dart';

class FoodData {
  final String imageString;
  final String name;

  // TODO (登録しに行く時のdata型と　それを firebase から取得するときの型に依存する。見直し必要)
  final String expiration;
  final String location;
  final Status status;

  FoodData(
      {required this.imageString,
      required this.name,
      required this.expiration,
      required this.location,
      required this.status});

  factory FoodData.fromJson(Map<dynamic, dynamic> json) {
    return FoodData(
        imageString: json['imageString'],
        name: json['name'],
        expiration: json['expiration'],
        location: json['location'],
        status: Status.from(json['status']));
  }
}
