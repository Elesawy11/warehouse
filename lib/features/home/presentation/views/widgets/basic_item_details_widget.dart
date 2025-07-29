import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacer.dart';
import 'settings_item_widget.dart';
import 'add_item_name_widget.dart';
import 'add_product_image_widget.dart';

class BasicItemDetailsWidget extends StatelessWidget {
  const BasicItemDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AddProductImageWidget(),
        verticalSpace(24),
        const AddItemTextDetailWidget(
          detailName: 'item name',
          fielText: 'Enter item name',
        ),
        SettingsItemWidget(
          value: 'hellodkkkkkkkkkkkkkkdsddddddddddddddddddddddd',
          label: 'Category',
          onTap: () {},
        ),
        SettingsItemWidget(
          label: 'Barcode',
          onTap: () {},
        ),
        SettingsItemWidget(
          label: 'Expire Date',
          onTap: () {},
        ),
      ],
    );
  }
}
