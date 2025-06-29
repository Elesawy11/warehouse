import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/utils/app_regex.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class LogInDataFields extends StatelessWidget {
  const LogInDataFields({
    super.key,
  });

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
          controller: context.read<LogInCubit>().emailController,
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterEmail,
          validator: (value) {
            // if (value == null || value.isEmpty) {
            //   return S.of(context).emailValidator;
            // } else if (!AppRegex.isEmailValid(value)) {
            //   return S.of(context).emailRegex;
            // }
          },
        ),
        verticalSpace(24),
        Text(
          S.of(context).password,
          style: Styles.font16Regular,
        ),
        verticalSpace(6),
        AppTextFormField(
          controller: context.read<LogInCubit>().passwordController,
          backgroundColor: ColorManager.greyF4,
          hintStyle: Styles.font14Regular.copyWith(
            color: ColorManager.grey75,
          ),
          hintText: S.of(context).enterPassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).passwordValidator;
            }
          },
          isObscureText: true,
        ),
      ],
    );
  }
}
