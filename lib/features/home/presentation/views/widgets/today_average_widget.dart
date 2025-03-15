import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class TodayAverageWidget extends StatelessWidget {
  const TodayAverageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.mainBlue,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DateWidget(),
          verticalSpace(16),
          const RowOfAchivedWidget()
        ],
      ),
    );
  }
}

class RowOfAchivedWidget extends StatelessWidget {
  const RowOfAchivedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AchivedWidget(
          achived: '276',
          name: 'total',
        ),
        SizedBox(
          height: 40.h,
          child: const VerticalDivider(
            color: ColorManager.greyED,
          ),
        ),
        const AchivedWidget(
          achived: '276',
          name: 'total',
        ),
        SizedBox(
          height: 40.h,
          child: const VerticalDivider(
            color: ColorManager.greyED,
          ),
        ),
        const AchivedWidget(
          achived: '276',
          name: 'total',
        ),
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Today',
            style: Styles.font24Bold,
          ),
          TextSpan(
            text: '  Mar 15,2025',
            style: Styles.font16Semibold.copyWith(
              color: ColorManager.greyED,
            ),
          ),
        ],
      ),
    );
  }
}

class AchivedWidget extends StatelessWidget {
  const AchivedWidget({
    super.key,
    required this.achived,
    required this.name,
  });
  final String achived, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          achived,
          style: Styles.font24Bold.copyWith(
            color: Colors.white,
          ),
        ),
        Text(
          name,
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.greyED,
          ),
        ),
      ],
    );
  }
}
