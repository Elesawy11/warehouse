import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import '../../../../core/utils/styles.dart';
import 'helpers/create_attributes_settings_method.dart';
import 'helpers/create_information_method.dart';
import 'helpers/create_low_stock_alert_method.dart';
import 'helpers/create_manage_team_method.dart';
import 'helpers/create_partner_method.dart';
import 'widgets/profile_settings_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: Styles.font20Medium.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black54),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 16.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const ProfileSettingsWidget(),
          ),
          verticalSpace(16),
          createManageTeamMethod(),
          verticalSpace(16),
          createAttributesSettingsMethod(),
          verticalSpace(16),
          createPartnerMethod(),
          verticalSpace(16),
          createLowStockAlertMethod(),
          verticalSpace(16),
          createInformationMethod(),
          verticalSpace(16),
        ],
      ),
    );
  }
}
