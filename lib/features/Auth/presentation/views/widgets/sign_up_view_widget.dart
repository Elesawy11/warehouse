import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/supabase_init.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class SignUpViewWidget extends StatefulWidget {
  const SignUpViewWidget({super.key});

  @override
  State<SignUpViewWidget> createState() => _SignUpViewWidgetState();
}

class _SignUpViewWidgetState extends State<SignUpViewWidget> {
  bool isSecure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).name,
            style: Styles.font16Regular,
          ),
          verticalSpace(6),
          AppTextFormField(
            backgroundColor: ColorManager.greyF4,
            hintStyle: Styles.font14Regular.copyWith(
              color: ColorManager.grey75,
            ),
            hintText: S.of(context).enterName,
            validator: (value) {},
          ),
          verticalSpace(24),
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  color:
                      isChecked ? ColorManager.mainBlue : ColorManager.grey9E,
                ),
              ),
              horizontalSpace(12),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: Text(
                  S.of(context).signupConsent,
                  style: Styles.font16Regular,
                ),
              ),
            ],
          ),
          verticalSpace(40),
          AppTextButton(
            text: S.of(context).signUp,
            onPressed: () async {
              var res = await SupabaseMethods.client.auth.signUp(
                email: 'ahmed20he@gmail.com',
                emailRedirectTo: 'elesawy928@gmail.com',
                password: '1142003a',
              );
              print(res.session);
            },
          ),
        ],
      ),
    );
  }
}
