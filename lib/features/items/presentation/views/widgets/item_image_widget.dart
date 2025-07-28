import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';

class ItemImageWidget extends StatelessWidget {
  const ItemImageWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.r,
      height: 60.r,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: ColorManager.greyCE,
              child: Icon(
                Icons.devices,
                color: ColorManager.grey9E,
                size: 30.r,
              ),
            );
          },
        ),
      ),
    );
  }
}
