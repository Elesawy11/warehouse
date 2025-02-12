import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthRepoImpl {
  final AuthDataSource source;

  AuthRepoImpl({required this.source});

  Future<UserModel> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
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
