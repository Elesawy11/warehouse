import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_regex.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/sign_up_cubit/sign_up_cubit.dart';

class SignUpDataFields extends StatelessWidget {
  const SignUpDataFields({
    super.key,
    required this.signupMethod,
  });
  final ValueNotifier<bool> signupMethod;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).name,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          controller: context.read<SignUpCubit>().nameController,
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterName,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).nameValidator;
            }
          },
        ),
        verticalSpace(24),
        Text(
          signupMethod.value ? S.of(context).phoneNumber : S.of(context).email,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        signupMethod.value
            ? AppTextFormField(
                // controller: context
                //     .read<SigninWithPhoneNumberCubit>()
                //     .phoneNumberController,
                backgroundColor: ColorManager.greyF4,
                hintStyle: Styles.font14Regular.copyWith(
                  color: ColorManager.grey75,
                ),
                hintText: S.of(context).enterPhoneNumber,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).enterPhoneNumber;
                  }
                },
              )
            : AppTextFormField(
                controller: context.read<SignUpCubit>().emailController,
                backgroundColor: ColorManager.greyF4,
                hintStyle: Styles.font14Regular.copyWith(
                  color: ColorManager.grey75,
                ),
                hintText: S.of(context).enterEmail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).emailValidator;
                  } else if (!AppRegex.isEmailValid(value)) {
                    return S.of(context).emailRegex;
                  }
                },
              ),
        verticalSpace(24),
        Text(
          S.of(context).password,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          controller: context.read<SignUpCubit>().passwordController,
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterPassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).passwordValidator;
            } else if (!AppRegex.isPasswordValid(value)) {
              return S.of(context).passwordRegex;
            }
          },
          isObscureText: true,
        ),
      ],
    );
  }
}
