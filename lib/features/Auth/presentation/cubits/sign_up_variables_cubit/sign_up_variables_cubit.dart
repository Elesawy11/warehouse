import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_variables_state.dart';

class SignUpVariablesCubit extends Cubit<SignUpVariablesState> {
  SignUpVariablesCubit() : super(SignUpVariablesInitial());
  bool isSecure = true;
  bool isChecked = false;

  void secure() {
    isSecure = !isSecure;
    emit(IsSecuredDone());
  }

  void check() {
    if (isChecked == false) {
      isChecked = true;
      emit(IsCheckedTrue());
    } else {
      isChecked = false;
      emit(IsCheckedFalse());
    }
  }
}
