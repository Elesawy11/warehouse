part of 'auth_scroll_cubit.dart';

@immutable
sealed class AuthScrollState {}

final class AuthScrollInitial extends AuthScrollState {}
final class AuthScrollSuccess extends AuthScrollState {}
