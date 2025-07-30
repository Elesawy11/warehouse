import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class PersonInformationFieldWidget extends StatelessWidget {
  const PersonInformationFieldWidget({
    super.key,
    required this.text,
    required this.validator,
    this.controller,
  });
  final String text;
  final dynamic Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.font16Regular,
        ),
        verticalSpace(4),
        AppTextFormField(
          hintText: text,
          validator: validator,
          controller: controller,
        ),
      ],
    );
  }
}
