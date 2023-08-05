import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/update_item_page.dart';

import '../../domain/value/status.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem(
      {super.key,
      required this.image,
      required this.name,
      required this.status,
      required this.expiration});

  final String name;
  final Uint8List image;
  final Status status;
  final DateTime expiration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle:
          Text('期限:${expiration.year}年${expiration.month}月${expiration.day}日'),
      leading: CircleAvatar(backgroundImage: MemoryImage(image)),
      trailing: Text(status.value),
      onTap: () {
        PageNavigation.push(context, const UpdateItemPage());
      },
    );
  }
}
