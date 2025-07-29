import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createPartnerMethod() {
  return SettingsGroupWidget(
    children: [
      const SectionHeaderWidget(title: 'Partner Settings'),
      SettingsItemWidget(
        label: 'Suppliers',
        value: '4 suppliers',
        onTap: () {},
      ),
      SettingsItemWidget(
        label: 'Customers',
        value: '4 customers',
        onTap: () {},
      ),
    ],
  );
}
