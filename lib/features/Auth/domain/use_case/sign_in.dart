import 'package:warehouse_app/features/Auth/domain/entities/user.dart';
import 'package:warehouse_app/features/Auth/domain/repo/auth_repo.dart';

class SignIn {
  final AuthRepo repo;

  SignIn({required this.repo});

  Future<User> call({required String email, required String password}) async {
    return repo.signIn(email: email, password: password);
  }
}
