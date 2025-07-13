import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/color_manager.dart';
import '../utils/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.child,
    this.borderRadius,
    this.textStyle,
    this.width,
    this.hight,
  });
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;
  final double? width;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorManager.mainBlue,
        minimumSize: Size(width ?? double.infinity, hight ?? 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
        ),
      ),
      child: child ??
          Text(
            text,
            style: textStyle ??
                Styles.font16Semibold.copyWith(
                  color: textColor ?? Colors.white,
                ),
          ),
    );
  }
}
