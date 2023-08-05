import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/update_item_page.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../../domain/value/status.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem({
    super.key,
    required this.food,
  });

  final FoodState food;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(food.name),
      subtitle: Text(
          '期限:${food.expiration.year}年${food.expiration.month}月${food.expiration.day}日'),
      leading: CircleAvatar(backgroundImage: MemoryImage(food.image)),
      trailing: Text(food.status.value),
      onTap: () {
        PageNavigation.push(context, const UpdateItemPage());
      },
    );
  }
}
