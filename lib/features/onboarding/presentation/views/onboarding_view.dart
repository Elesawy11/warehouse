import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/generated/l10n.dart';
import 'constants.dart';
import 'widgets/onboarding_page_view.dart';
import 'widgets/onboarding_scroll_points.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController pageController = PageController();
  String text = S.current.continueButton;

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

                if (value == Constants.getOnbaordingList(context).length - 1) {
                  text = S.of(context).getStartedButton;
                } else {
                  text = S.of(context).continueButton;
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
                if (currentPage <
                    Constants.getOnbaordingList(context).length - 1) {
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
              text: S.of(context).skipButton,
              onPressed: () {
                //Navigate to Auth screen
                context.push(Routes.login);
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
