import 'package:flutter/material.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class StockMethodDeatils extends StatelessWidget {
  const StockMethodDeatils({
    super.key,
    required this.title,
    required this.date,
    required this.items,
    required this.partnerLabel,
    required this.partner,
  });

  final String title;
  final String date;
  final int items;
  final String partnerLabel;
  final String partner;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.font18Bold.copyWith(
                  color: ColorManager.darkBlue,
                ),
              ),
              Text(
                date,
                style: Styles.font14SemiBold.copyWith(
                  color: ColorManager.grey75,
                ),
              ),
            ],
          ),
          verticalSpace(8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Items: ',
                  style: Styles.font14SemiBold.copyWith(
                    color: ColorManager.grey75,
                  ),
                ),
                TextSpan(
                  text: items.toString(),
                  style: Styles.font14SemiBold.copyWith(
                    color: ColorManager.darkBlue,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$partnerLabel: ',
                  style: Styles.font14SemiBold.copyWith(
                    color: ColorManager.grey75,
                  ),
                ),
                TextSpan(
                  text: partner,
                  style: Styles.font14SemiBold.copyWith(
                    color: ColorManager.darkBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
