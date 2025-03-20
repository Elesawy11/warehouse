import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import 'container_of_feature_widget.dart';

class SelectProductWidget extends StatelessWidget {
  const SelectProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.greyED,
          borderRadius: BorderRadius.circular(6.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(
          children: [
            ContainerOfFeatureWidget(
              field: 'Items',
              value: '0',
              onTap: () {},
              hasBorder: false,
            ),
            verticalSpace(18),
            Image.asset(
              Assets.imagesStock22,
              width: 100.r,
              height: 100.r,
            ),
            verticalSpace(16),
            Text(
              'Select Product',
              style: Styles.font18Bold.copyWith(
                color: ColorManager.grey9E,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
