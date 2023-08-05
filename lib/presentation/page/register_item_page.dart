import 'package:flutter/material.dart';
import 'package:rememberme/presentation/component/register_food_item.dart';

class RegisterItemPage extends StatelessWidget {
  const RegisterItemPage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('いつまでに食べるか決めて登録'),
      ),
      body: SafeArea(
        child: RegisterFoodItem(
          imagePath: imagePath,
        ),
      ),
    );
  }
}
