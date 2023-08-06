import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterFoodItem extends StatefulWidget {
  const RegisterFoodItem({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<StatefulWidget> createState() => _RegisterFoodItemState();
}

class _RegisterFoodItemState extends State<RegisterFoodItem> {
  late String _expirationText = '期限を入力してね';
  late String _foodName = '';

  Future<void> _showExpirationDatePicker(BuildContext context) async {
    final now = DateTime.now();
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: now,
        lastDate: DateTime(now.year + 10, now.month, now.day));

    if (date != null) {
      setState(() {
        _expirationText = (DateFormat('yyyy/MM/dd(E)', "ja_JP")).format(date);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 256,
            height: 256,
            child: Image.file(File(widget.imagePath)),
          ),
          SizedBox(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: '名前を入力してね'),
              onChanged: (text) => {
                setState(() {
                  _foodName = text;
                })
              },
            ),
          ),
          ElevatedButton(
              onPressed: () => {_showExpirationDatePicker(context)},
              child: Text(_expirationText)),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: (_expirationText == '期限を入力してね' || (_foodName == ''))
                  ? null
                  : () => {
                        // TODO API でcreateしに行く usecase
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
