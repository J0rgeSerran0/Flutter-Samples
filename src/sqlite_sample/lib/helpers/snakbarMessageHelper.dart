import 'package:flutter/material.dart';

class SnakBarMessageHelper {
  static Future SendMessage(BuildContext context, String message,
      Color backgroundColor, Color textColor) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(12),
    ));
  }
}
