import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class AddItemTextDetailWidget extends StatelessWidget {
  const AddItemTextDetailWidget({
    super.key,
    required this.detailName,
    required this.fielText,
  });
  final String detailName;
  final String fielText;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            detailName,
            style: Styles.font16Regular,
          ),
          SizedBox(
            width: 180,
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: fielText,
                  hintStyle: Styles.font16Regular.copyWith(
                    color: ColorManager.grey9E,
                  ),
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
