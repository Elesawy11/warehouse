import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import 'container_of_feature_widget.dart';
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
        ContainerOfFeatureWidget(
          field: S.of(context).language,
          value: 'English',
          onTap: () {},
        ),
        ContainerOfFeatureWidget(
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
        ContainerOfFeatureWidget(
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
