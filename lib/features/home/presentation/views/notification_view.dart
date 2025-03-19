import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/custom_view_bar_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomViewBarWidget(
                  title: S.of(context).notification,
                ),
                //TODO: if notification list is empty show this
                //TODO: else show notification list
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        Assets.imagesNoNotification,
                      ),
                      Text(
                        S.of(context).emptyNotification,
                        style: Styles.font16Semibold.copyWith(
                          color: ColorManager.subText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
