import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextOfBottomSheetWidget extends StatelessWidget {
  const CustomTextOfBottomSheetWidget({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: Styles.font18Bold,
      ),
    );
  }
}
