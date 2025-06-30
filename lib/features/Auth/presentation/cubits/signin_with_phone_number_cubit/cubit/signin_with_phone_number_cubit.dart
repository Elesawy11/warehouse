import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';
import 'signin_with_phone_number_state.dart';

class SigninWithPhoneNumberCubit extends Cubit<SigninWithPhoneNumberState> {
  SigninWithPhoneNumberCubit(this._repo)
      : super(const SigninWithPhoneNumberState.initial());
  final AuthRepoImpl _repo;
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> signInWithPhoneNumber() async {
    emit(const SigninWithPhoneNumberState.singInWithPhoneLoading());
    final response = await _repo.signInWithPhoneNumber(
      phoneNumber: phoneNumberController.text,
      password: passwordController.text,
    );

    switch (response) {
      case Success():
        emit(const SigninWithPhoneNumberState.singInWithPhoneSuccess());

        break;
      case Failure():
        emit(
          SigninWithPhoneNumberState.singInWithPhoneError(
              error: response.error),
        );
        break;
      default:
    }
  }
}
