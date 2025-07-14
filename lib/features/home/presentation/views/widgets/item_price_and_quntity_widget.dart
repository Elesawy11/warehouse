import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'add_item_name_widget.dart';

class ItemPriceAndQuntityWidget extends StatelessWidget {
  const ItemPriceAndQuntityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price and quantity',
          style: Styles.font22Bold,
        ),
        verticalSpace(24),
        const AddItemTextDetailWidget(
          detailName: 'Price',
          fielText: 'Enter price',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Price',
          fielText: 'Enter price',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Price',
          fielText: 'Enter price',
        ),
      ],
    );
  }
}
