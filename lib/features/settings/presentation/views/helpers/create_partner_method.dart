import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';

import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createPartnerMethod(BuildContext context) {
  return SettingsGroupWidget(
    children: [
      const SectionHeaderWidget(title: 'Partner Settings'),
      SettingsItemWidget(
        label: 'Suppliers',
        value: '4 suppliers',
        onTap: () => context.push(Routes.suppliers),
      ),
      SettingsItemWidget(
        label: 'Customers',
        value: '4 customers',
        onTap: () => context.push(Routes.customers),
      ),
    ],
  );
}
