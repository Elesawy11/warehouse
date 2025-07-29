import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createAttributesSettingsMethod() {
  return SettingsGroupWidget(
    children: [
      const SectionHeaderWidget(title: 'Attributes Settings'),
      SettingsItemWidget(
        label: 'Categories',
        value: '4',
        onTap: () {},
      ),
      SettingsItemWidget(
        label: 'Attributes',
        value: '4',
        onTap: () {},
      ),
    ],
  );
}
