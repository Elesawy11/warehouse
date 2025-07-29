import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ProfileSettingsWidget extends StatelessWidget {
  const ProfileSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.r,
          height: 50.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [Color(0xFF4A90E2), Color(0xFF357ABD)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Icon(
            Icons.computer,
            color: Colors.white,
            size: 28,
          ),
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Computers stock',
                style: Styles.font16Semibold.copyWith(
                  color: ColorManager.darkBlue,
                ),
              ),
              verticalSpace(4),
              Text(
                'ID: 1352781',
                style: Styles.font14SemiBold.copyWith(
                  color: ColorManager.grey75,
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: ColorManager.greyCE,
          size: 32.r,
        ),
      ],
    );
  }
}
