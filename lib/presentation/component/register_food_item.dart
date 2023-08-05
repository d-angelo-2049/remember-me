import 'dart:io';

import 'package:flutter/material.dart';

class RegisterFoodItem extends StatelessWidget {
  const RegisterFoodItem({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 256,
            height: 256,
            child: Image.file(File(imagePath)),
          ),
          const Text("show image")
        ],
      ),
    );
  }
}
