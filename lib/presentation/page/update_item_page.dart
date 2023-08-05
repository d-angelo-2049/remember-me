import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/value/status.dart';

class UpdateItemPage extends StatelessWidget {
  const UpdateItemPage({super.key, required this.name, required this.image, required this.status});

  final String name;
  final Uint8List image;
  final Status status;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('消費した？　廃棄した？'),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
