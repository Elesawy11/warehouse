import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:warehouse_app/features/Auth/domain/use_case/sign_up.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());
  final SignUpUseCase signUpUseCase;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> signUp({required String email, required String password}) async {
    emit(SignUpLoading());
    try {
      await signUpUseCase.call(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(SignUpSuccess());
    } catch (e) {
      emit(SignUpFailure(e.toString()));
    }
  }
}
