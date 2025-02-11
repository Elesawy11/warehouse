import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/sign_up_cubit/sign_up_cubit.dart';

class SignUpDataFields extends StatelessWidget {
  const SignUpDataFields({
    super.key,
  });

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
          validator: (value) {},
        ),
        verticalSpace(24),
        Text(
          S.of(context).email,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          controller: context.read<SignUpCubit>().emailController,
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
          controller: context.read<SignUpCubit>().passwordController,
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterPassword,
          validator: (value) {},
          isObscureText: true,
        ),
      ],
    );
  }
}
