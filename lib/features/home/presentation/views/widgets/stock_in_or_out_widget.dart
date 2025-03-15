import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';

class StockInOrOutWidget extends StatelessWidget {
  const StockInOrOutWidget({
    super.key,
    required this.title,
    required this.iconUrl,
  });
  final String title, iconUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            12.r,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                iconUrl,
                width: 50.r,
                height: 50.r,
              ),
            ),
            horizontalSpace(12),
            Text(
              title,
              style: Styles.font16Semibold,
            )
          ],
        ),
      ),
    );
  }
}
