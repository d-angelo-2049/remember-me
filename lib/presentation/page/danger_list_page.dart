import 'package:flutter/material.dart';
import 'package:rememberme/presentation/component/food_list.dart';

class DangerListPage extends StatelessWidget {
  const DangerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('もうそろそろ 食べないといけないもの'),
      ),
      body: const SafeArea(
        child: FoodList(),
      ),
    );
  }
}
