import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class SettingsItemNotificationWidget extends StatelessWidget {
  final String label;

  final VoidCallback onTap;
  final bool isLast;

  const SettingsItemNotificationWidget({
    super.key,
    required this.label,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : const Border(
                  bottom: BorderSide(
                    color: ColorManager.greyF4,
                    width: 1,
                  ),
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Styles.font16Regular.copyWith(
                color: ColorManager.grey75,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Switch(value: true, onChanged: (value) {}),
                Icon(
                  Icons.chevron_right,
                  color: ColorManager.greyC1,
                  size: 32.r,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
