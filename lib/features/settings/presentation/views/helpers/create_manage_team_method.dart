import '../../../../home/presentation/views/widgets/settings_item_widget.dart';
import '../widgets/section_header_widget.dart';
import '../widgets/settings_group_widget.dart';

SettingsGroupWidget createManageTeamMethod() {
  return SettingsGroupWidget(
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
      ),
    ],
  );
}
