import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_state.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';

class SigninWithPhoneNumberButtonWidget extends StatelessWidget {
  const SigninWithPhoneNumberButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninWithPhoneNumberCubit, SigninWithPhoneNumberState>(
      listener: (context, state) {
        if (state is SingInWithPhoneError) {
          customSnackBarMethod(context, state.error);
        } else if (state is SingInWithPhoneSuccess) {
          context.pushReplacement(Routes.home);
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: S.of(context).signIn,
          child: state is SingInWithPhoneLoading
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
          onPressed: () async {
            if (context
                .read<SigninWithPhoneNumberCubit>()
                .formKey
                .currentState!
                .validate()) {
              context
                  .read<SigninWithPhoneNumberCubit>()
                  .signInWithPhoneNumber();
            }
          },
        );
      },
    );
  }
}
