import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/home/presentation/views/widgets/custom_view_bar_widget.dart';
import '../../../../generated/l10n.dart';
import 'widgets/list_view_of_profile_feature_info_widget.dart';
import 'widgets/list_view_of_system_settings_features_widget.dart';
import 'widgets/profile_image_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomViewBarWidget(
                title: S.of(context).profileSettings,
              ),
            ),
            verticalSpace(24),
            const Center(
              child: ProfileImageWidget(),
            ),
            verticalSpace(30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const ListViewOFProfileFeatureInfoWidget(),
            ),
            SizedBox(
              height: 4.h,
              width: double.infinity,
              child: Divider(
                color: ColorManager.greyF4,
                // height: 20.h,
                thickness: 10.h,
              ),
            ),
            verticalSpace(24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                S.of(context).systemSettings,
                style: Styles.font20Medium,
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const ListViewOfSystemSettingsFeaturesWidget(),
            )
          ],
        ),
      ),
    );
  }
}
