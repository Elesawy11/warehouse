import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/custom_show_bottom_sheet_metod.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import 'add_item_attribut_widget.dart';
import 'add_item_name_widget.dart';
import 'custom_text_of_bottom_sheet_widget.dart';

class ItemAtrributesWidget extends StatelessWidget {
  const ItemAtrributesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Attributes',
              style: Styles.font24Bold,
            ),
            horizontalSpace(16),
            Icon(
              Icons.info_outline,
              size: 20.r,
              color: ColorManager.grey9E,
            ),
          ],
        ),
        AddItemAttributWidget(
          text: 'Size',
          onTap: () {
            customShowBottomSheetMethod(
              context,
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextOfBottomSheetWidget(
                    text: 'Large',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  verticalSpace(8),
                  CustomTextOfBottomSheetWidget(
                    text: 'Medium',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  verticalSpace(8),
                  CustomTextOfBottomSheetWidget(
                    text: 'Small',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  verticalSpace(16),
                ],
              ),
            );
          },
        ),
        const AddItemTextDetailWidget(
            detailName: 'Description', fielText: 'description'),
        const AddItemTextDetailWidget(
            detailName: 'Location', fielText: 'location in store'),
        const AddItemTextDetailWidget(detailName: 'Width', fielText: 'width'),
        const AddItemTextDetailWidget(detailName: 'Height', fielText: 'height'),
        const AddItemTextDetailWidget(detailName: 'Weight', fielText: 'weight'),
        AddItemAttributWidget(
          text: 'Basic supplier',
          onTap: () {},
        ),
      ],
    );
  }
}
