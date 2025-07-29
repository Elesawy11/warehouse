import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.label,
    this.onTap,
    this.value,
  });
  final String label;
  final String? value;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorManager.greyED,
              width: 1.w,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: Styles.font16Semibold.copyWith(
                color: ColorManager.grey75,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 200.w,
              child: Text(
                value ?? '',
                style: Styles.font16Semibold.copyWith(
                  color: ColorManager.darkBlue,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
              ),
            ),
            horizontalSpace(6),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: ColorManager.greyC2,
            ),
          ],
        ),
      ),
    );
  }
}
