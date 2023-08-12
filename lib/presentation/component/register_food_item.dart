import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rememberme/presentation/navigation/page_nagivation.dart';
import 'package:rememberme/presentation/notifier/register_food_item.dart';

class RegisterFoodItem extends ConsumerWidget {
  const RegisterFoodItem({super.key, required this.imagePath});

  final String imagePath;

  Future<void> _showExpirationDatePicker(
      BuildContext context, RegisterFoodItemNotifier notifier) async {
    final now = DateTime.now();
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: now,
        lastDate: DateTime(now.year + 10, now.month, now.day));

    if (date != null) {
      notifier.updateExpiration(
          (DateFormat('yyyy/MM/dd(E)', "ja_JP")).format(date));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerFoodItemNotifierProvider);
    final notifier = ref.read(registerFoodItemNotifierProvider.notifier);
    //notifier.updateImagePath(imagePath);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 256,
            height: 256,
            child: Image.file(File(imagePath)),
          ),
          SizedBox(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: '名前を入力してね'),
              onChanged: (text) => {notifier.updateName(text)},
            ),
          ),
          ElevatedButton(
              onPressed: () => {_showExpirationDatePicker(context, notifier)},
              child: Text(state.expiration)),
          SizedBox(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: '保管場所を入力してね'),
              onChanged: (location) => {notifier.updateLocation(location)},
            ),
          ),
          ElevatedButton(
              onPressed: (state.expiration == '期限を入力してね' ||
                      (state.name == '') ||
                      (state.location == ''))
                  ? null
                  : () async => {
                        showDialog(
                            context: context,
                            builder: (_) => const Center(
                                child: CircularProgressIndicator())),
                        notifier.updateImagePath(imagePath),
                        await notifier.post(),
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('登録しました！!'),
                          ),
                        ),

              PageNavigation.popUntil(context, 3)
                        },
              child: const Text(
                '登録する',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
