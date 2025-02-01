import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'widgets/onboarding_page_view.dart';
import 'widgets/onboarding_scroll_points.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController pageController = PageController();
  String text = 'Continue';
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(160),
          Expanded(
            child: OnboardingPageView(
              pageController: pageController,
              onPageChanged: (value) {
                currentPage = value;

                if (value == onboardingImages.length - 1) {
                  text = 'Get Started';
                } else {
                  text = 'Continue';
                }
                setState(() {});
              },
            ),
          ),
          OnboardingScrollPoints(
            currentPage: currentPage,
          ),
          verticalSpace(50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AppTextButton(
              text: text,
              onPressed: () {
                if (currentPage < onboardingImages.length - 1) {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  //Navigate to next screen
                }

                setState(() {});
              },
            ),
          ),
          verticalSpace(14),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AppTextButton(
              text: 'Skip',
              onPressed: () {
                //Navigate to Auth screen
              },
              backgroundColor: ColorManager.blueE0,
              textColor: ColorManager.mainBlue,
            ),
          ),
          verticalSpace(120),
        ],
      ),
    );
  }
}
