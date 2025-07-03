import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/DI/service_locator.dart';
import '../../cubits/log_in_cubit/log_in_cubit.dart';
import '../../cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import '../../cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import 'login_view_widget.dart';
import 'sign_up_view_widget.dart';

class AuthMethodsWidgets extends StatelessWidget {
  const AuthMethodsWidgets({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt.get<LogInCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt.get<SigninWithPhoneNumberCubit>(),
              ),
            ],
            child: const LoginViewWidget(),
          ),
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt.get<SignUpCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt.get<SignUpWithPhoneNumberCubit>(),
              ),
            ],
            child: const SignUpViewWidget(),
          ),
        ],
      ),
    );
  }
}
