import 'package:warehouse_app/features/Auth/domain/entities/user.dart';

abstract class AuthRepo {
  Future<User> signUp({
    required String email,
    required String password,
  });

  Future<User> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
