import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/auth_scroll_cubit/auth_scroll_cubit.dart';
import 'widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthScrollCubit(),
      child: const Scaffold(
        body: AuthViewBody(),
      ),
    );
  }
}
