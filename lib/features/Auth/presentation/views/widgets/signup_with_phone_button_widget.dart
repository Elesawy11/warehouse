import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_state.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';

class SignUpWithPhoneButtonWidget extends StatelessWidget {
  const SignUpWithPhoneButtonWidget({
    super.key,
    required this.isChecked,
  });
  final ValueNotifier<bool> isChecked;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpWithPhoneNumberCubit>();
    return BlocConsumer<SignUpWithPhoneNumberCubit, SignUpWithPhoneNumberState>(
      listener: (context, state) {
        if (state is SignUpWithPhoneError) {
          customSnackBarMethod(context, state.error);
        } else if (state is SignUpWithPhoneSuccess) {
          context.pushReplacement(Routes.otpView, extra: {
            'phoneNumber': cubit.phoneNumberController.text,
          });
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: S.of(context).signUp,
          child: state is SignUpWithPhoneLoading
              ? Center(
                  child: SizedBox(
                    width: 24.r,
                    height: 24.r,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
              : null,
          onPressed: () {
            if (cubit.formKey.currentState!.validate() && isChecked.value) {
              cubit.signupWithPhoneNumber();
            } else if (!isChecked.value) {
              customSnackBarMethod(
                context,
                S.of(context).checkBox,
              );
            }
          },
          // onPressed: () => context.push(Routes.otpView),
        );
      },
    );
  }
}
