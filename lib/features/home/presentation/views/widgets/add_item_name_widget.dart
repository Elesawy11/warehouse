import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class AddItemNameWidget extends StatelessWidget {
  const AddItemNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.greyED,
            width: 1.w,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Item name',
            style: Styles.font16Regular,
          ),
          horizontalSpace(44),
          SizedBox(
            width: 180,
            child: Center(
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Enter item name',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
