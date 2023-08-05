import 'package:flutter/material.dart';
import 'package:rememberme/presentation/component/update_food_item.dart';
import 'package:rememberme/presentation/state/food_state.dart';

class UpdateItemPage extends StatelessWidget {
  const UpdateItemPage({super.key, required this.food});

  final FoodState food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('消費した？　廃棄した？'),
      ),
      body: SafeArea(child: UpdateFoodItem(food: food)),
    );
  }
}
