import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class PersonInformationWidget extends StatelessWidget {
  const PersonInformationWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const Border(bottom: BorderSide(color: ColorManager.greyCE)),
      onTap: onTap,
      title: Text(
        title,
        style: Styles.font16Semibold,
      ),
      subtitle: Text(
        subTitle,
        style: Styles.font16Regular.copyWith(color: ColorManager.mainBlue),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
        color: ColorManager.greyC2,
      ),
    );
  }
}
