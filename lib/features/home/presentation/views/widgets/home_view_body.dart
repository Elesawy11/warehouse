import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'product_widget.dart';
import 'row_of_stock_method.dart';
import 'show_items_title_widget.dart';
import 'today_average_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(20),
            const TodayAverageWidget(),
            verticalSpace(12),
            const RowOfStockMethods(),
            verticalSpace(22),
            const ShowItemsTitleWidget(),
            verticalSpace(22),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const ProductWidget();
                },
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
