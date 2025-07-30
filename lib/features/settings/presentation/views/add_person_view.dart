import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/person_information_field_widget.dart';

class AddPersonView extends StatelessWidget {
  const AddPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Suppliers',
          style: Styles.titleStyle,
        ),
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
                    text: 'name',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    text: 'phone',
                    validator: (value) {},
                  ),
                  verticalSpace(24),
                  PersonInformationFieldWidget(
                    text: 'address',
                    validator: (value) {},
                  ),
                ],
              ),
            ),
            AppTextButton(
              text: 'Create',
              onPressed: () {},
            ),
            verticalSpace(60),
          ],
        ),
      ),
    );
  }
}
