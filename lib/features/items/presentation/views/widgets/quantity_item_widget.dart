import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/styles.dart';

class QuantityItemWidget extends StatelessWidget {
  const QuantityItemWidget({
    super.key,
    required this.quantity,
  });

  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: _getQuantityColor(),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        quantity.toString(),
        style: Styles.font16Semibold.copyWith(color: Colors.white),
      ),
    );
  }

  Color _getQuantityColor() {
    if (quantity >= 50) {
      return const Color(0xFF4CAF50); // Green for high stock
    } else if (quantity >= 20) {
      return const Color(0xFFFF9800); // Orange for medium stock
    } else {
      return const Color(0xFFF44336); // Red for low stock
    }
  }
}
