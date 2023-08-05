import 'package:flutter/material.dart';
import 'package:rememberme/presentation/state/food_state.dart';

class UpdateFoodItem extends StatelessWidget {
  const UpdateFoodItem({super.key, required this.food});

  final FoodState food;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.memory(food.image),
          Text(
            food.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '期限:${food.expiration.year}年${food.expiration.month}月${food.expiration.day}日',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //TODO: update API しに行く
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    disabledForegroundColor: Colors.white),
                child: const Text(
                  '消費？',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO: update API しに行く
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    disabledForegroundColor: Colors.white),
                child: const Text(
                  '廃棄？',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
