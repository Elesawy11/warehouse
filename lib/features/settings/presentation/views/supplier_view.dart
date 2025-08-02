import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import '../../../../core/helpers/spacer.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/person_model.dart';
import 'widgets/person_information_field_widget.dart';

class SupplierView extends StatelessWidget {
  const SupplierView({
    super.key,
    required this.supplier,
  });
  final PersonModel supplier;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Supplier',
          style: Styles.titleStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 6.w),
            child: Text(
              'Delete',
              style: Styles.font16Regular.copyWith(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  verticalSpace(24),
                  Text(
                    'Information about supplier',
                    style: Styles.font22Bold,
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.name,
                    text: 'name',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.phone,
                    text: 'phone',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    hintText: supplier.address,
                    text: 'address',
                    validator: (value) {},
                  ),
                ],
              ),
            ),
            AppTextButton(
              text: 'Save',
              onPressed: () {},
            ),
            verticalSpace(60),
          ],
        ),
      ),
    );
  }
}
