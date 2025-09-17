import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_with_phone_number_state.freezed.dart';

@freezed
class SigninWithPhoneNumberState with _$SigninWithPhoneNumberState {
  const factory SigninWithPhoneNumberState.initial() = _Initial;
  const factory SigninWithPhoneNumberState.singInWithPhoneLoading() =
      SingInWithPhoneLoading;
  const factory SigninWithPhoneNumberState.singInWithPhoneSuccess() =
      SingInWithPhoneSuccess;
  const factory SigninWithPhoneNumberState.singInWithPhoneError(
      {required String error}) = SingInWithPhoneError;
}
