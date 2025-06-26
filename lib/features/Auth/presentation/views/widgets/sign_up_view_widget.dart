import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../../../../core/helpers/spacer.dart';
import 'sign_up_check_box_widget.dart';
import 'sign_up_create_account_button_widget.dart';
import 'sign_up_data_fields.dart';

class SignUpViewWidget extends StatelessWidget {
  const SignUpViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: context.read<SignUpCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignUpDataFields(),
            verticalSpace(20),
            const SignUpCheckBoxWidget(),
            verticalSpace(40),
            const SignUpCreateAccountButtonWidget(),
          ],
        ),
      ),
    );
  }
}
