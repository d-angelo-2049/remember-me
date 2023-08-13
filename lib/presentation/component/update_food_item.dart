import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/domain/value/status.dart';
import 'package:rememberme/presentation/state/food_state.dart';

import '../navigation/page_nagivation.dart';
import '../notifier/food_list_notifier.dart';

class UpdateFoodItem extends ConsumerWidget {
  const UpdateFoodItem({super.key, required this.food});

  final FoodState food;

  Future<void> updateStatus(
      BuildContext context, WidgetRef ref, Status status) async {
    final notifier = ref.read(foodListNotifierProvider.notifier);
    showDialog(
        context: context,
        builder: (_) => const Center(child: CircularProgressIndicator()));

    await notifier.updateItem(food, status);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('更新しました！!'),
      ),
    );

    PageNavigation.popUntil(context, 3);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(foodListNotifierProvider.notifier);

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
            '期限:${food.expiration.year}年${food.expiration.month}月${food.expiration.day}日, ${food.location}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await updateStatus(context, ref, Status.consumed);
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
                onPressed: () async {
                  await updateStatus(context, ref, Status.loss);
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
