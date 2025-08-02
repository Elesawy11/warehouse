import 'package:flutter/material.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class PersonInformationWidget extends StatelessWidget {
  const PersonInformationWidget({
    super.key,
    
    required this.onTap, required this.supplier,
  });
  final PersonModel supplier;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const Border(bottom: BorderSide(color: ColorManager.greyCE)),
      onTap: onTap,
      title: Text(
        supplier.name,
        style: Styles.font16Semibold,
      ),
      subtitle: Text(
        supplier.phone,
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
