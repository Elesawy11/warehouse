import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class LoginViewWidget extends StatefulWidget {
  const LoginViewWidget({super.key});

  @override
  State<LoginViewWidget> createState() => _LoginViewWidgetState();
}

class _LoginViewWidgetState extends State<LoginViewWidget> {
  bool isSecure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterEmail,
          validator: (value) {},
        ),
        verticalSpace(24),
        Text(
          S.of(context).password,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          suffixIcon: InkWell(
            onTap: () {
              isSecure = !isSecure;
              setState(() {});
            },
            child: Icon(
              isSecure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
          hintText: S.of(context).enterPassword,
          validator: (value) {},
          isObscureText: isSecure,
        ),
        verticalSpace(20),
        Row(
          children: [
            InkWell(
              onTap: () {
                isChecked = !isChecked;
                setState(() {});
              },
              child: Icon(
                isChecked
                    ? Icons.check_box
                    : Icons.check_box_outline_blank_outlined,
                size: 24.r,
                color: isChecked ? ColorManager.mainBlue : ColorManager.grey9E,
              ),
            ),
            horizontalSpace(12),
            Text(
              S.of(context).rememberMe,
              style: Styles.font16Regular,
            ),
          ],
        ),
        verticalSpace(40),
        AppTextButton(
          text: S.of(context).signIn,
          onPressed: () {},
        ),
      ],
    );
  }
}
