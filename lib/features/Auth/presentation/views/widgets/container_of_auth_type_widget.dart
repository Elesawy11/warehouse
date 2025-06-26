import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/auth_scroll_cubit/auth_scroll_cubit.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_constants.dart';
import '../../../../../core/utils/color_manager.dart';

class ContainerOfAuthTypeWidget extends StatelessWidget {
  const ContainerOfAuthTypeWidget({super.key});

  // int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthScrollCubit>();
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.greyF4,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
      child: ListView.builder(
        itemCount: OnbaoedingConstants.getAuthTypeList(context).length,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.center,
            child: AuthTypeWidget(
              type: OnbaoedingConstants.getAuthTypeList(context)[index],
              currentPage: context.watch<AuthScrollCubit>().currentPage,
              index: index,
              onTap: () => cubit.scroll(index),
            ),
          );
        },
      ),
    );
  }
}

class AuthTypeWidget extends StatelessWidget {
  const AuthTypeWidget({
    super.key,
    this.onTap,
    required this.index,
    required this.currentPage,
    required this.type,
  });
  final void Function()? onTap;
  final int index;
  final int currentPage;
  final String type;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: index == currentPage ? 4 : 0,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          width: (MediaQuery.of(context).size.width - 36.w) * 0.5,
          decoration: BoxDecoration(
            color: index == currentPage ? Colors.white : ColorManager.greyF4,
            borderRadius: BorderRadius.circular(8.r),
          ),
          alignment: Alignment.center,
          child: Text(
            type,
            style: Styles.font16Semibold,
          ),
        ),
      ),
    );
  }
}
