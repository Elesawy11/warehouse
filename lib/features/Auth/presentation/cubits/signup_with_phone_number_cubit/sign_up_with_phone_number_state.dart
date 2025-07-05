import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_with_phone_number_state.freezed.dart';

@freezed
class SignUpWithPhoneNumberState with _$SignUpWithPhoneNumberState {
  const factory SignUpWithPhoneNumberState.initial() = _Initial;
  const factory SignUpWithPhoneNumberState.signUpWithPhoneSuccess() =
      SignUpWithPhoneSuccess;
  const factory SignUpWithPhoneNumberState.signUpWithPhoneLoading() =
      SignUpWithPhoneLoading;
  const factory SignUpWithPhoneNumberState.signUpWithPhoneError(
      {required String error}) = SignUpWithPhoneError;
  const factory SignUpWithPhoneNumberState.verifyCodeSuccess() =
      VerifyCodeSuccess;
  const factory SignUpWithPhoneNumberState.verifyCodeLoading() =
      VerifyCodeLoading;
  const factory SignUpWithPhoneNumberState.verifyCodeError(
      {required String error}) = VerifyCodeError;
}
