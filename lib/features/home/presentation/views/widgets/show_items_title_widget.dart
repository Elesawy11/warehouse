import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ShowItemsTitleWidget extends StatelessWidget {
  const ShowItemsTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'items',
          style: Styles.font16Semibold,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            '+ Add Item',
            style: Styles.font16Semibold.copyWith(
              color: ColorManager.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}
