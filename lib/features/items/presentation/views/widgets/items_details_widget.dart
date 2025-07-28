import 'package:flutter/material.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import '../items_view.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        verticalSpace(4),
        Text(
          'SKU: ${item.sku}',
          style: Styles.font12Medium.copyWith(
            color: ColorManager.grey75,
          ),
        ),
        verticalSpace(8),
        Row(
          children: [
            Text(
              'Cost: ${item.cost}',
              style: Styles.font13Regular.copyWith(
                color: ColorManager.grey75,
              ),
            ),
            verticalSpace(16),
            Text(
              'Price: ${item.price}',
              style: Styles.font13Regular.copyWith(
                color: ColorManager.grey75,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
