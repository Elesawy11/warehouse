import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/features/items/data/models/product_model.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import 'row_of_product_info_widget.dart';

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
                  product.name,
                  // 'ahmed',
                  style: Styles.font16Semibold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              verticalSpace(8),
              RowOfProductInfoWidget(
                product: product,
              )
            ],
          ),
          const Spacer(),
          Text(
            '${product.quantity} N',
            style: Styles.font18Bold.copyWith(
              color: ColorManager.mainBlue,
            ),
          )
        ],
      ),
    );
  }
}
