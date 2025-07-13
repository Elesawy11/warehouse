import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/features/items/data/models/product_model.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      margin: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.imagesLaptop,
            width: 60.r,
            height: 60.r,
          ),
          horizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  //TODO: product name
                  product.name,
                  // 'ahmed',
                  style: Styles.font16Semibold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              verticalSpace(8),
              const RowOfProductInfo()
            ],
          ),
          const Spacer(),
          Text(
            //TODO: product countity
            '80 N',
            style: Styles.font18Bold.copyWith(
              color: ColorManager.mainBlue,
            ),
          )
        ],
      ),
    );
  }
}

class RowOfProductInfo extends StatelessWidget {
  const RowOfProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'category',
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
          //TODO: product cost
          '100 C',
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
          //TODO: product price
          '200 P',
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.subText,
          ),
        ),
      ],
    );
  }
}
