import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class SettingsItemWidget extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;
  final bool isLast;

  const SettingsItemWidget({
    super.key,
    required this.label,
    required this.value,
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
                Text(
                  value,
                  style: Styles.font16Regular.copyWith(
                    color: ColorManager.darkBlue,
                  ),
                ),
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
