import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errMes,
              ),
            ),
          );
        } else {
          print('Success State ===>>>>>>>>>');
        }
      },
      builder: (context, state) {
        return AppTextButton(
          text: S.of(context).signUp,
          child: state is SignUpLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : null,
          onPressed: () {
            context.read<SignUpCubit>().signUp();
          },
        );
      },
    );
  }
}
