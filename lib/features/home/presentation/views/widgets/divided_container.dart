import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';

class DividedContainer extends StatelessWidget {
  const DividedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 8.h,
      color: ColorManager.greyED,
    );
  }
}
