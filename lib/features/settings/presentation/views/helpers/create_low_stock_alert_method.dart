import '../../../../home/presentation/views/widgets/setting_item_switch_widget.dart';
import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createLowStockAlertMethod() {
  return SettingsGroupWidget(
    children: [
      const SectionHeaderWidget(title: 'Low Stock Alert'),
      SettingsItemSwitchWidget(
        label: 'Push notifications',
        onTap: () {},
      ),
      SettingsItemWidget(
        label: 'Minimum quantity',
        value: '15',
        onTap: () {},
      ),
    ],
  );
}
