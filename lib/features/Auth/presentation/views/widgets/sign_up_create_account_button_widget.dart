import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_variables_cubit/sign_up_variables_cubit.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/sign_up_cubit/sign_up_cubit.dart';

class SignUpCreateAccountButtonWidget extends StatelessWidget {
  const SignUpCreateAccountButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          customSnackBarMethod(context, state.errMes);
        } else if (state is SignUpSuccess) {
          context.pushReplacement(Routes.home);
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: S.of(context).signUp,
          child: state is SignUpLoading
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
            if (context.read<SignUpCubit>().formKey.currentState!.validate() &&
                context.read<SignUpVariablesCubit>().isChecked) {
              context.read<SignUpCubit>().signUp();
            } else if (!context.read<SignUpVariablesCubit>().isChecked) {
              customSnackBarMethod(
                context,
                S.of(context).checkBox,
              );
            }
          },
        );
      },
    );
  }
}
