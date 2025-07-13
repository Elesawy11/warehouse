import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class AddItemAttributWidget extends StatelessWidget {
  const AddItemAttributWidget({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.font16Regular,
            ),
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
