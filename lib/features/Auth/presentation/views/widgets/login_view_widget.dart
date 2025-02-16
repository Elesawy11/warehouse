import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_variables_cubit/log_in_variables_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/login_button_widget.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/login_data_field.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../cubits/log_in_cubit/log_in_cubit.dart';
import 'log_in_check_box_widget.dart';

class LoginViewWidget extends StatelessWidget {
  const LoginViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInVariablesCubit(),
      child: SingleChildScrollView(
        child: Form(
          key: context.read<LogInCubit>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogInDataFields(),
              verticalSpace(20),
              const LogInCheckBoxWidget(),
              verticalSpace(40),
              const LogInButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
