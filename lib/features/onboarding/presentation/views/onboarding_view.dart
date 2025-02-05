import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/onboarding/presentation/cubits/cubit/onobarding_scroll_cubit.dart';
import 'package:warehouse_app/generated/l10n.dart';
import 'widgets/onboarding_page_view.dart';
import 'widgets/onboarding_scroll_points.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnobardingScrollCubit(),
      child: Scaffold(
        body: BlocConsumer<OnobardingScrollCubit, OnobardingScrollState>(
          listener: (context, state) {
            if (state is ScrollFinish) {
              context.push(Routes.login);
            }
          },
          builder: (context, state) {
            final cubit = context.read<OnobardingScrollCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(160),
                Expanded(
                  child: OnboardingPageView(
                    pageController: cubit.controller,
                    onPageChanged: (page) =>
                        cubit.updateCurrentPage(page, context),
                  ),
                ),
                OnboardingScrollPoints(
                  currentPage: cubit.currentPage,
                ),
                verticalSpace(50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: AppTextButton(
                    text: state is ScrollLastIcrease || state is ScrollFinish
                        ? S.of(context).getStartedButton
                        : S.of(context).continueButton,
                    onPressed: () => cubit.scroll(context),
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
            );
          },
        ),
      ),
    );
  }
}
