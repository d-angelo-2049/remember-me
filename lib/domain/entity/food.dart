import 'dart:typed_data';

import '../value/status.dart';

class Food {
  final String documentId;
  final String name;
  final DateTime expiration;
  final Uint8List image;
  final String location;
  final Status status;

  Food(
      {required this.documentId,
      required this.name,
      required this.expiration,
      required this.image,
      required this.location,
      required this.status});
}
