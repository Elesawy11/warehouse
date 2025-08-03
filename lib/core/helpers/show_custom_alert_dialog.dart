import 'package:flutter/material.dart';
import '../utils/color_manager.dart';
import '../utils/styles.dart';

void showCustomAlertDialog(
  BuildContext context, {
  required String title,
  required String? supTitle,
  required String buttonText,
  required Color textColor,
  required VoidCallback onPressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: Styles.font16Semibold,
        ),
        content: Text(
          supTitle ?? '',
          style: Styles.font14Regular,
        ),
        actions: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: Styles.font16Semibold.copyWith(
                color: textColor,
              ),
            ),
          ),
          TextButton(
            child: Text(
              'Close',
              style: Styles.font16Semibold.copyWith(
                color: ColorManager.darkBlue,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
