import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import '../../../../../core/utils/color_manager.dart';
import 'basic_item_details_widget.dart';

class AddItemViewBody extends StatelessWidget {
  const AddItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: const BasicItemDetailsWidget(),
          ),
          Container(
            width: double.infinity,
            height: 8.h,
            color: ColorManager.greyED,
          ),
          verticalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price and quantity',
                style: Styles.font22Bold,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
