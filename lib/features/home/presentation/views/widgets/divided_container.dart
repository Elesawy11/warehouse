import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';

class DividedContainer extends StatelessWidget {
  const DividedContainer({
    super.key, this.borderRadius,
  });
final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: ColorManager.greyED,
        borderRadius: borderRadius
      ),
      width: double.infinity,
      height: 8.h,
     
    );
  }
}
