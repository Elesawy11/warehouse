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
          detailName: 'Quntity',
          fielText: 'Enter quntity',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Purchase Price',
          fielText: 'Enter price',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Sale Price',
          fielText: 'Enter price',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Number of units',
          fielText: 'Enter number of units',
        ),
        const AddItemTextDetailWidget(
          detailName: 'unit purshase price',
          fielText: 'Enter unit purshase price',
        ),
        const AddItemTextDetailWidget(
          detailName: 'Reorder point',
          fielText: 'Enter reorder point',
        ),
      ],
    );
  }
}
