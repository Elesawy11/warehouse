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
    this.onTap,
  });
  final String field, value;
  final bool hasBorder;
  final GestureTapCallback? onTap;
  final bool isEmptyValue;

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
            Row(
              children: [
                !isEmptyValue
                    ? Text(
                        value,
                        style: Styles.font18Meduim,
                      )
                    : const SizedBox(),
                horizontalSpace(10),
                SvgPicture.asset(
                  Assets.svg_imageChevronRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
