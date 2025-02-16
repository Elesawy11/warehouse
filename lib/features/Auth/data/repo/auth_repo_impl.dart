import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthRepoImpl {
  final AuthDataSource source;

  AuthRepoImpl({required this.source});

  Future<void> signIn({required String email, required String password}) async {
    await source.signIn(email: email, password: password);
  }

  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name}) async {
    final userModel = await source.signUp(
      email: email,
      password: password,
      name: name,
    );
    return UserModel(
      id: userModel.id,
      name: userModel.name,
      email: userModel.email,
    );
  }
}
