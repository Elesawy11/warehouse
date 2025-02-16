import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import '../../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../generated/l10n.dart';

class LogInButtonWidget extends StatelessWidget {
  const LogInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInFailure) {
          customSnackBarMethod(context, state.errMes);
        } else if (state is LogInSuccess) {
          context.pushReplacement(Routes.home);
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: S.of(context).signIn,
          child: state is LogInLoading
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
            if (context.read<LogInCubit>().formKey.currentState!.validate()) {
              context.read<LogInCubit>().logIn();
            }
          },
        );
      },
    );
  }
}
