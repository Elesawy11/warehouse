import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'container_of_profile_feature_info_widget.dart';
import 'system_setting_switch_widget.dart';

class ListViewOfSystemSettingsFeaturesWidget extends StatelessWidget {
  const ListViewOfSystemSettingsFeaturesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ContainerOfProfileFeatureInfoWidget(
          field: S.of(context).language,
          value: 'English',
          onTap: () {},
        ),
        ContainerOfProfileFeatureInfoWidget(
          field: S.of(context).appStyle,
          value: 'Light',
          onTap: () {},
        ),
        SystemSettingSwitchWidget(
          field: S.of(context).sound,
        ),
        SystemSettingSwitchWidget(
          field: S.of(context).vibration,
        ),
        ContainerOfProfileFeatureInfoWidget(
          field: S.of(context).logOut,
          value: '',
          isEmptyValue: true,
          hasBorder: false,
          onTap: () {},
        ),
      ],
    );
  }
}
