import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_constants.dart';
import '../../../../../core/helpers/spacer.dart';
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
      itemCount: OnbaoedingConstants.getOnbaordingList(context).length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                OnbaoedingConstants.getOnbaordingList(context)[index][0],
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            verticalSpace(40),
            Text(
              OnbaoedingConstants.getOnbaordingList(context)[index][1],
              style: Styles.font18Bold,
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                OnbaoedingConstants.getOnbaordingList(context)[index][2],
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
