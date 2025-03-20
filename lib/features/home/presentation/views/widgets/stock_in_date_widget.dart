import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class StockDateWidget extends StatelessWidget {
  const StockDateWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: show date view
      },
      child: Container(
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
              title,
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
      ),
    );
  }
}
