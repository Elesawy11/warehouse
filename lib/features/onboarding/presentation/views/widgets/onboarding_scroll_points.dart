import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import 'onboarding_page_view.dart';

class OnboardingScrollPoints extends StatelessWidget {
  const OnboardingScrollPoints({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      width: 5 * 32.w,
      child: Center(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: onboardingImages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: Container(
                height: 8.h,
                width: 32.w,
                decoration: BoxDecoration(
                  color: index == currentPage
                      ? ColorManager.mainBlue
                      : ColorManager.blueE0,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
