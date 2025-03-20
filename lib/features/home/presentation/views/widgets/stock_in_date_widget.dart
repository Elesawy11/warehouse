import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class StockInDateWidget extends StatelessWidget {
  const StockInDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
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
            'Stock In Date',
            style: Styles.font24Bold.copyWith(
              color: ColorManager.mainBlue,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorManager.greyED,
              borderRadius: BorderRadius.circular(
                6.r,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text(
              'Mar 15,2025',
              style: Styles.font14SemiBold.copyWith(
                color: ColorManager.grey61,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
