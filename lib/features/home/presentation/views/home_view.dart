import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warehouse_app/features/items/presentation/cubits/get_all_product_cubit/get_all_product_cubit.dart';
import '../../../../generated/l10n.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.greyED,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: InkWell(
          // onTap: () => context.push(Routes.profile),
          onTap: () {
            context.read<GetAllProductCubit>().getAllProduct();
          },
          child: Row(
            children: [
              Image.asset(
                Assets.imagesAccount,
                width: 45.r,
                height: 45.r,
              ),
              horizontalSpace(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).hello,
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
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: InkWell(
              onTap: () => context.push(Routes.notification),
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
