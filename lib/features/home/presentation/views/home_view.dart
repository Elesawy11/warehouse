import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.greyED,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Image.asset(
            Assets.imagesAccount,
            width: 30.r,
            height: 30.r,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: Styles.font16Regular.copyWith(
                color: ColorManager.subText,
              ),
            ),
            Text(
              'Ahmed Elesawy',
              style: Styles.font16Semibold,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: ColorManager.greyED,
                child: SvgPicture.asset(
                  Assets.svg_imageNotification,
                  width: 24.r,
                  height: 24.r,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
