import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'basic_item_details_widget.dart';
import 'divided_container.dart';
import 'item_price_and_quntity_widget.dart';

class AddItemViewBody extends StatelessWidget {
  const AddItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const BasicItemDetailsWidget(),
          ),
          const DividedContainer(),
          verticalSpace(12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const ItemPriceAndQuntityWidget(),
          ),
          const DividedContainer()
        ],
      ),
    );
  }
}
