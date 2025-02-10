import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/domain/entities/user.dart';
import 'package:warehouse_app/features/Auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource source;

  AuthRepoImpl({required this.source});
  @override
  Future<User> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<User> signUp({required String email, required String password}) async {
    final userModel = await source.signUp(
      email: email,
      password: password,
    );
    return User(
      id: userModel.id,
      name: userModel.name,
      email: userModel.email,
    );
  }
}
