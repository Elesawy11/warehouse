import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_constants.dart';
import 'package:warehouse_app/generated/l10n.dart';
import 'widgets/onboarding_page_view.dart';
import 'widgets/onboarding_scroll_points.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

ValueNotifier<int> _currentPage = ValueNotifier<int>(0);
final PageController _pageController = PageController();
int listLength = 0;

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    _pageController.addListener(() {
      _currentPage.value = _pageController.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    listLength = OnbaoedingConstants.getOnbaordingList(context).length;

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _currentPage,
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(160),
              Expanded(
                child: OnboardingPageView(
                  pageController: _pageController,
                ),
              ),
              OnboardingScrollPoints(
                currentPage: _currentPage.value,
              ),
              verticalSpace(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: AppTextButton(
                    text: _currentPage.value == listLength - 1
                        ? S.of(context).getStartedButton
                        : S.of(context).continueButton,
                    onPressed: () {
                      if (_currentPage.value == listLength - 1) {
                        context.pushReplacement(Routes.auth);
                        return;
                      }
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }),
              ),
              verticalSpace(14),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: AppTextButton(
                  text: S.of(context).skipButton,
                  onPressed: () {
                    //Navigate to Auth screen
                    context.pushReplacement(Routes.auth);
                  },
                  backgroundColor: ColorManager.blueE0,
                  textColor: ColorManager.mainBlue,
                ),
              ),
              verticalSpace(120),
            ],
          );
        },
      ),
    );
  }
}
