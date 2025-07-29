import 'package:flutter/material.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/profile_settings_widget.dart';
import 'widgets/section_header_widget.dart';
import 'widgets/settings_group_widget.dart';
import 'widgets/settings_item_widget.dart';

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
        padding: const EdgeInsets.all(16),
        children: [
          // Computer Stock Card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
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

          SettingsGroupWidget(
            children: [
              const SectionHeaderWidget(title: 'Manage Team'),
              SettingsItemWidget(
                label: 'Team name',
                value: 'Computers st...',
                onTap: () {},
              ),
              SettingsItemWidget(
                label: 'Notes',
                value: 'Central stock of c...',
                onTap: () {},
              ),
              SettingsItemWidget(
                label: 'Currency',
                value: 'USD',
                onTap: () {},
              ),
              SettingsItemWidget(
                label: 'Members',
                value: '1 member(s)',
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
