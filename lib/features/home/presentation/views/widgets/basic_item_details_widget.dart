import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacer.dart';
import 'add_item_attribut_widget.dart';
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
        const AddItemNameWidget(),
        AddItemAttributWidget(
          text: 'SKU',
          onTap: () {},
        ),
        AddItemAttributWidget(
          text: 'SKU',
          onTap: () {},
        ),
        AddItemAttributWidget(
          text: 'SKU',
          onTap: () {},
        ),
      ],
    );
  }
}
