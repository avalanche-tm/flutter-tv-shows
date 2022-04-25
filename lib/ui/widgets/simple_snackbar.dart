import 'package:flutter/material.dart';

SnackBar simpleSnackBar(String text) => //
    SnackBar(
      content: SizedBox(
        height: 30,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text),
        ),
      ),
    );
