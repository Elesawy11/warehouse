import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/generated/l10n.dart';
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
        StockInOrOutWidget(
          onTap: () => context.push(Routes.stockIn),
          title: S.of(context).stockIn,
          iconUrl: Assets.imagesStockIn,
        ),
        StockInOrOutWidget(
          title: S.of(context).stockOut,
          iconUrl: Assets.imagesStockOut,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
          child: InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                Assets.imagesScan,
                width: 50.r,
                height: 60.h,
              ),
            ),
          ),
        )
      ],
    );
  }
}
