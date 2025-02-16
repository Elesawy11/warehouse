import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.repo) : super(LogInInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthRepoImpl repo;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> logIn() async {
    emit(LogInLoading());
    try {
      await repo.signIn(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(LogInSuccess());
    } catch (e) {
      emit(LogInFailure(e.toString()));
    }
  }
}
