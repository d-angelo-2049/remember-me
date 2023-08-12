import 'package:flutter/material.dart';

class PageNavigation {
  static Future push(BuildContext context, Widget page) async {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  static Future pop(BuildContext context, Widget page) async {
    return Navigator.of(context).pop(
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  static Future popUntil(BuildContext context, int until) async {
    int count = 0;
    return Navigator.of(context).popUntil((route) => count++ >= until);
  }
}
