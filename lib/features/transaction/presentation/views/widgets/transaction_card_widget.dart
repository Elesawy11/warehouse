import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/assets.dart';
import 'stock_method_details_widget.dart';
import 'stock_method_icon_and_quntity_widget.dart';

enum TransactionType { stockIn, stockOut }

class TransactionCardWidget extends StatelessWidget {
  final TransactionType type;
  final int quantity;
  final int items;
  final String partner;
  final String date;
  final bool isSupplier;

  const TransactionCardWidget({
    super.key,
    required this.type,
    required this.quantity,
    required this.items,
    required this.partner,
    required this.date,
    required this.isSupplier,
  });

  @override
  Widget build(BuildContext context) {
    final isStockIn = type == TransactionType.stockIn;
    final quantityColor = isStockIn ? Colors.blue : Colors.red;
    final quantityPrefix = isStockIn ? '+' : '-';
    final icon = isStockIn ? Assets.imagesStockIn : Assets.imagesStockOut;

    final title = isStockIn ? 'Stock In' : 'Stock Out';
    final partnerLabel = isSupplier ? 'Supplier' : 'Customer';

    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          StockMethodIconAndQuntityWidget(
              icon: icon,
              quantityPrefix: quantityPrefix,
              quantity: quantity,
              quantityColor: quantityColor),
          horizontalSpace(16),
          StockMethodDeatils(
            title: title,
            date: date,
            items: items,
            partnerLabel: partnerLabel,
            partner: partner,
          ),
        ],
      ),
    );
  }
}
