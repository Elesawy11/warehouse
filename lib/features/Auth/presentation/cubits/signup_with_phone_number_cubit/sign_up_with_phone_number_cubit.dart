import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';

import 'sign_up_with_phone_number_state.dart';

class SignUpWithPhoneNumberCubit extends Cubit<SignUpWithPhoneNumberState> {
  SignUpWithPhoneNumberCubit(this._repo)
      : super(const SignUpWithPhoneNumberState.initial());
  final AuthRepoImpl _repo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signupWithPhoneNumber() async {
    emit(const SignUpWithPhoneNumberState.signUpWithPhoneLoading());
    final response = await _repo.signUpWithPhone(
      name: nameController.text,
      phoneNumber: phoneNumberController.text,
      password: passwordController.text,
    );

    switch (response) {
      case Success():
        emit(const SignUpWithPhoneNumberState.signUpWithPhoneSuccess());

        break;
      case Failure():
        emit(
          SignUpWithPhoneNumberState.signUpWithPhoneError(
            error: response.error,
          ),
        );
      default:
    }
  }
}
