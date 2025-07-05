import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/sign_up_cubit/sign_up_cubit.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    super.key,
    required this.isChecked,
  });
  final ValueNotifier<bool> isChecked;
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
          // onPressed: () {
          //   // context.pushReplacement(Routes.home);

          //   if (context.read<SignUpCubit>().formKey.currentState!.validate() &&
          //       isChecked.value) {
          //     context.read<SignUpCubit>().signUp();
          //   } else if (!isChecked.value) {
          //     customSnackBarMethod(
          //       context,
          //       S.of(context).checkBox,
          //     );
          //   }
          //   log('my check is :: ${isChecked.value}');
          // },
          onPressed: () => context.push(Routes.otpView),
        );
      },
    );
  }
}
