import 'package:warehouse_app/features/Auth/domain/entities/user.dart';
import 'package:warehouse_app/features/Auth/domain/repo/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo repo;

  SignUpUseCase({required this.repo});

  Future<User> call({required String email, required String password}) async {
    return await repo.signUp(email: email, password: password);
  }
}
