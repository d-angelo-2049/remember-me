import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rememberme/presentation/component/food_list_item.dart';

import '../notifier/food_list_notifier.dart';

class FoodList extends ConsumerWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(foodListNotifierProvider);
    return state.when(
      data: (foods) {
        return ListView(
          children: foods
              .map(
                (e) => FoodListItem(
                  food: e,
                ),
              )
              .toList(),
        );
      },
      error: (error, _) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
