import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/signup_with_phone_button_widget.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import 'sign_up_check_box_widget.dart';
import 'sign_up_create_account_button_widget.dart';
import 'sign_up_data_fields.dart';

class SignUpViewWidget extends StatefulWidget {
  const SignUpViewWidget({super.key});

  @override
  State<SignUpViewWidget> createState() => _SignUpViewWidgetState();
}

class _SignUpViewWidgetState extends State<SignUpViewWidget> {
  ValueNotifier<bool> isChecked = ValueNotifier(false);
  ValueNotifier<bool> signupMethod = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.read<SignUpCubit>();
    final signUpWithPhoneNumberCubit =
        context.read<SignUpWithPhoneNumberCubit>();
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: signupMethod,
        builder: (context, value, child) {
          return Form(
            key: signupMethod.value
                ? signUpWithPhoneNumberCubit.formKey
                : signupCubit.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SignUpDataFields(
                  signupMethod: signupMethod,
                ),
                verticalSpace(20),
                SignUpCheckBoxWidget(
                  isChecked: isChecked,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Icon(
                      signupMethod.value ? Icons.email_outlined : Icons.phone,
                      color: ColorManager.mainBlue,
                    ),
                    horizontalSpace(12),
                    InkWell(
                      onTap: () {
                        signupMethod.value = !signupMethod.value;
                        log(signupMethod.value.toString());
                      },
                      child: Text(
                        signupMethod.value
                            ? S.of(context).signUpWithEmail
                            : S.of(context).signUpWithPhone,
                        style: Styles.font16Semibold.copyWith(
                          color: ColorManager.mainBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(30),
                signupMethod.value
                    ? SignUpWithPhoneButtonWidget(isChecked: isChecked)
                    : SignUpButtonWidget(
                        isChecked: isChecked,
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
