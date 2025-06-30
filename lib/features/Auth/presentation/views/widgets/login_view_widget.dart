import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/login_button_widget.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/login_data_field.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/signin_withPhoneNumber_button_widget.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/log_in_cubit/log_in_cubit.dart';
import 'log_in_check_box_widget.dart';

class LoginViewWidget extends StatefulWidget {
  const LoginViewWidget({super.key});

  @override
  State<LoginViewWidget> createState() => _LoginViewWidgetState();
}

class _LoginViewWidgetState extends State<LoginViewWidget> {
  ValueNotifier<bool> loginMethod = ValueNotifier<bool>(false);
  ValueNotifier<bool> isChecked = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: loginMethod,
        builder: (context, value, child) {
          return Form(
            key: loginMethod.value
                ? context.read<SigninWithPhoneNumberCubit>().formKey
                : context.read<LogInCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogInDataFields(
                  loginMethod: loginMethod,
                ),
                verticalSpace(20),
                LogInCheckBoxWidget(
                  isChecked: isChecked,
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Icon(
                      loginMethod.value ? Icons.email_outlined : Icons.phone,
                      color: ColorManager.mainBlue,
                    ),
                    horizontalSpace(12),
                    InkWell(
                      onTap: () {
                        loginMethod.value = !loginMethod.value;
                        log(loginMethod.value.toString());
                      },
                      child: Text(
                        loginMethod.value
                            ? S.of(context).signInWithEmail
                            : S.of(context).signInWithPhone,
                        style: Styles.font16Semibold.copyWith(
                          color: ColorManager.mainBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(40),
                loginMethod.value
                    ? const SigninWithPhoneNumberButtonWidget()
                    : LogInButtonWidget(
                        // i add isChecked valueNotifier to save data into local storage soon
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
// commiet
