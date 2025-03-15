import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import 'stock_in_or_out_widget.dart';

class RowOfStockMethods extends StatelessWidget {
  const RowOfStockMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const StockInOrOutWidget(
          title: 'Stock in',
          iconUrl: Assets.imagesStockIn,
        ),
        const StockInOrOutWidget(
          title: 'Stock out',
          iconUrl: Assets.imagesStockOut,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              Assets.imagesScan,
              width: 50.r,
              height: 50.r,
            ),
          ),
        )
      ],
    );
  }
}
