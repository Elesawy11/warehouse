import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    this.onPageChanged,
    required this.pageController,
  });

  final void Function(int)? onPageChanged;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onPageChanged,
      controller: pageController,
      itemCount: onboardingImages.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              onboardingImages[index],
            ),
            verticalSpace(40),
            Text(
              'Ease To Use',
              style: Styles.font18Bold,
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                'TEXT HERE TEXT HERE TEXT HERE TEXT HERE TEXT HERE TEXT HERE TEXT HERE TEXTTEXT HERE TEXTTEXT HERE TEXT HERE TEXT HERE',
                textAlign: TextAlign.center,
                style: Styles.font13SemiBold.copyWith(
                  height: 1.5,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

const List<String> onboardingImages = [
  Assets.imagesOnboarding1,
  Assets.imagesOnboarding1,
  Assets.imagesOnboarding1,
];
