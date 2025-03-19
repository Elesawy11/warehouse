import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import 'container_of_profile_feature_info_widget.dart';

class ListViewOFProfileFeatureInfoWidget extends StatelessWidget {
  const ListViewOFProfileFeatureInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ContainerOfProfileFeatureInfoWidget(
          onTap: () {
            // TODO: goto feature view
          },
          field: S.of(context).name,
          value: 'Ahmed Elesawy',
        ),
        ContainerOfProfileFeatureInfoWidget(
          onTap: () {
            // TODO: goto feature view
          },
          field: S.of(context).birthday,
          value: '11/4/2003',
        ),
        ContainerOfProfileFeatureInfoWidget(
          onTap: () {
            // TODO: goto feature view
          },
          field: S.of(context).companyName,
          value: 'Elesawy',
          hasBorder: false,
        ),
      ],
    );
  }
}
