part of 'sign_up_variables_cubit.dart';

@immutable
sealed class SignUpVariablesState {}

final class SignUpVariablesInitial extends SignUpVariablesState {}
final class IsSecuredDone extends SignUpVariablesState {}
final class IsCheckedDone extends SignUpVariablesState {}
