import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StockMethodIconAndQuntityWidget extends StatelessWidget {
  const StockMethodIconAndQuntityWidget({
    super.key,
    required this.icon,
    required this.quantityPrefix,
    required this.quantity,
    required this.quantityColor,
  });

  final String icon;
  final String quantityPrefix;
  final int quantity;
  final MaterialColor quantityColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Image.asset(
            icon,
            width: 44.r,
            height: 44.r,
          ),
          const SizedBox(height: 4),
          Text(
            '$quantityPrefix$quantity',
            style: TextStyle(
              color: quantityColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
