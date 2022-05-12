import 'package:flutter/material.dart';

extension ShowSnackBarExtension on BuildContext {
  void showSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: SizedBox(
        height: 30,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(message),
        ),
      ),
    ));
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message);
  }
}
