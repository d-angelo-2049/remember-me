import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/update_item_page.dart';

import '../../domain/value/status.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem({
    super.key,
    required this.image,
    required this.name,
    required this.status,
  });

  final String name;
  final Uint8List image;
  final Status status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(backgroundImage: MemoryImage(image)),
      trailing: Text(status.value),
      onTap: () {
        PageNavigation.push(context, const UpdateItemPage());
      },
    );
  }
}
