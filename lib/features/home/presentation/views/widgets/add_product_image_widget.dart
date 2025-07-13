import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';

class AddProductImageWidget extends StatelessWidget {
  const AddProductImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            Assets.imagesBox,
            width: 120.r,
            height: 120.r,
          ),
        ),
        horizontalSpace(24),
        SizedBox(
          width: 120.w,
          child: AppTextButton(
            text: 'Add Image',
            onPressed: () {},
            backgroundColor: ColorManager.greyED,
            textColor: ColorManager.mainBlue,
            borderRadius: BorderRadius.circular(12.r),
            hight: 42.h,
          ),
        ),
      ],
    );
  }
}
