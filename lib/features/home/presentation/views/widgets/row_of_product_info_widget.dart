import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../items/data/models/product_model.dart';

class RowOfProductInfoWidget extends StatelessWidget {
  const RowOfProductInfoWidget({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          product.category,
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.subText,
          ),
        ),
        SizedBox(
          height: 20.h,
          child: const VerticalDivider(
            color: ColorManager.greyC2,
          ),
        ),
        Text(
          '${product.sellingPrice} C',
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.subText,
          ),
        ),
        SizedBox(
          height: 20.h,
          child: const VerticalDivider(
            color: ColorManager.greyC2,
          ),
        ),
        Text(
          '${product.purchasePrice} P',
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.subText,
          ),
        ),
      ],
    );
  }
}
