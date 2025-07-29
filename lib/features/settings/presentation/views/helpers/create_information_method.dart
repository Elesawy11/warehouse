import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createInformationMethod() {
  return SettingsGroupWidget(
    children: [
      const SectionHeaderWidget(title: 'Information'),
      SettingsItemWidget(
        label: 'About Stockly',
        onTap: () {},
      ),
      SettingsItemWidget(
        label: 'Chat with Support',
        onTap: () {},
      ),
      SettingsItemWidget(
        label: 'FAQ',
        onTap: () {},
      ),
    ],
  );
}
