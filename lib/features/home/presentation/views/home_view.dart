import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              style: Styles.font14Regular.copyWith(
                color: ColorManager.subText,
              ),
            ),
            Text(
              'Ahmed Elesawy',
              style: Styles.font16Regular,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              backgroundColor: ColorManager.greyED,
              child: SvgPicture.asset(
                Assets.svg_imageNotification,
                width: 24.r,
                height: 24.r,
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
