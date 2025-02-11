import 'package:flutter/material.dart';
import '../utils/styles.dart';

void customSnackBarMethod(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: Styles.font13Regular,
      ),
      duration: const Duration(seconds: 5),
    ),
  );
}
