import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacer.dart';
import '../items_view.dart';
import 'item_image_widget.dart';
import 'items_details_widget.dart';
import 'quantity_item_widget.dart';

class ItemCardWidget extends StatelessWidget {
  final Item item;

  const ItemCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            ItemImageWidget(imagePath: item.imagePath),
            verticalSpace(16),
            Expanded(
              child: ItemDetailsWidget(
                item: item,
              ),
            ),
            QuantityItemWidget(
              quantity: item.quantity,
            ),
          ],
        ),
      ),
    );
  }
}
