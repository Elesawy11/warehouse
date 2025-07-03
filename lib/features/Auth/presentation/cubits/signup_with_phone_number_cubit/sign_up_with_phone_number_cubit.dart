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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

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

  Future<void> verifyOtp({required String phoneNumber}) async {
    final otpToken = controllers.map((e) => e.text).join();

    emit(const VerifyCodeLoading());
    final otpResponse = await _repo.verifyOTP(
      phoneNumber: phoneNumber,
      otpToken: otpToken,
    );

    switch (otpResponse) {
      case Success():
        emit(const VerifyCodeSuccess());

        break;
      case Failure():
        emit(
          VerifyCodeError(
            error: otpResponse.error,
          ),
        );
      default:
    }
  }

  @override
  Future<void> close() async {
    nameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    return super.close();
  }
}
