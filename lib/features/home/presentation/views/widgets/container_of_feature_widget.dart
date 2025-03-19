import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ContainerOfFeatureWidget extends StatelessWidget {
  const ContainerOfFeatureWidget({
    super.key,
    required this.field,
    required this.value,
    this.hasBorder = true,
    this.isEmptyValue = false,
    this.isLastIcon = false,
    this.onTap,
    this.widget,
  });
  final String field, value;
  final bool hasBorder;
  final GestureTapCallback? onTap;
  final bool isEmptyValue;
  final bool isLastIcon;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          border: hasBorder
              ? Border(
                  bottom: BorderSide(
                    color: ColorManager.greyED,
                    width: 1.w,
                  ),
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              field,
              style: Styles.font18Meduim.copyWith(
                color: ColorManager.subText,
              ),
            ),
            // const Spacer(),
            !isEmptyValue && !isLastIcon
                ? Row(
                    children: [
                      !isEmptyValue
                          ? Text(
                              value,
                              style: Styles.font18Meduim,
                            )
                          : const SizedBox(),
                      horizontalSpace(10),
                      !isLastIcon
                          ? SvgPicture.asset(
                              Assets.svg_imageChevronRight,
                            )
                          : const SizedBox(),
                    ],
                  )
                : widget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
