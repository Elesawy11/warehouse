import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class PasteOtpButton extends StatelessWidget {
  const PasteOtpButton(
      {super.key, required this.controllers, required this.focusNodes});
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;

  @override
  Widget build(BuildContext context) {
    void handleOtpPaste(String value) {
      if (value.length == 6) {
        for (int i = 0; i < 6; i++) {
          controllers[i].text = value[i];
          if (i < 5) {
            focusNodes[i].unfocus();
            FocusScope.of(context).requestFocus(focusNodes[i + 1]);
          }
        }
      }
    }

    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () async {
          final clipboardData = await Clipboard.getData('text/plain');
          if (clipboardData != null && clipboardData.text != null) {
            handleOtpPaste(clipboardData.text!);
          }
        },
        child: Text(
          'Paste OTP',
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
      ),
    );
  }
}
