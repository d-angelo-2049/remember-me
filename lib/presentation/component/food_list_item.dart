import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rememberme/domain/entity/food.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/page/update_item_page.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../../domain/value/status.dart';

class FoodListItem extends StatelessWidget {
  FoodListItem({
    super.key,
    required this.food,
  });

  final FoodState food;

  final Map<Status, String> matchStatus = {
    Status.unconsume: '未消費',
    Status.consumed: '消費済',
    Status.loss: '廃棄済'
  };

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(food.name),
      subtitle: Text(
          '期限:${food.expiration.year}年${food.expiration.month}月${food.expiration.day}日, ${food.location}'),
      leading: CircleAvatar(backgroundImage: MemoryImage(food.image)),
      trailing: Text(
        matchStatus[food.status] ?? '不明',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: () {
        PageNavigation.push(
            context,
            UpdateItemPage(
              food: food,
            ));
      },
    );
  }
}
