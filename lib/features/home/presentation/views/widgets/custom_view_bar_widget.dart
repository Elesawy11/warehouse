import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomViewBarWidget extends StatelessWidget {
  const CustomViewBarWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            Assets.svg_imageArrowLeft,
            height: 34.r,
          ),
        ),
        horizontalSpace(24),
        Text(
          title,
          style: Styles.font20Medium,
        ),
      ],
    );
  }
}
