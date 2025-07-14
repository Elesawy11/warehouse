import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import 'add_item_name_widget.dart';

class ItemAtrributesWidget extends StatelessWidget {
  const ItemAtrributesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Attributes',
              style: Styles.font24Bold,
            ),
            horizontalSpace(16),
            Icon(
              Icons.info_outline,
              size: 20.r,
              color: ColorManager.grey9E,
            ),
          ],
        ),
        const AddItemTextDetailWidget(
            detailName: 'detailName', fielText: 'fielText'),
        const AddItemTextDetailWidget(
            detailName: 'detailName', fielText: 'fielText'),
        const AddItemTextDetailWidget(
            detailName: 'detailName', fielText: 'fielText'),
        const AddItemTextDetailWidget(
            detailName: 'detailName', fielText: 'fielText'),
        const AddItemTextDetailWidget(
            detailName: 'detailName', fielText: 'fielText'),
      ],
    );
  }
}
