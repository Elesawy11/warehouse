import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorManager.mainBlue,
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Today',
                        style: Styles.font24Bold,
                      ),
                      TextSpan(
                        text: '  Mar 15,2025',
                        style: Styles.font16Semibold,
                      ),
                    ],
                  ),
                ),
                Row(
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
                )
              ],
            ),
          )
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
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
