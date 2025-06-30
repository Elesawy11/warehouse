import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthRepoImpl {
  final AuthDataSource _source;

  AuthRepoImpl({required AuthDataSource source}) : _source = source;

  Future<void> signIn({required String email, required String password}) async {
    await _source.signIn(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name}) async {
    final userModel = await _source.signUp(
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

  Future<NetworkResult<User>> signInWithPhoneNumber(
      {required String phoneNumber, required String password}) async {
    try {
      final cleanedPhoneNumber =
          phoneNumber.trim().replaceAll(RegExp(r'\s+'), '');
      if (!_isValidPhoneNumber(cleanedPhoneNumber)) {
        return const NetworkResult.failure(
            'Invalid phone number format. Please include country code.');
      }
      // used in signup
      // final cleanedPassword = password.trim();
      // if (cleanedPassword.isEmpty || cleanedPassword.length < 9) {
      //   throw Exception('Password must be at least 9 characters long.');
      // }
      final response = await _source.signInWithPhoneNumber(
        phoneNumber: cleanedPhoneNumber,
        password: password.trim(),
      );
      final user = response.user;
      if (user == null) {
        return const NetworkResult.failure('Sign-in failed: No user Returned.');
      }
      return NetworkResult.success(user);
    } on AuthException catch (e) {
      switch (e.code) {
        case 'phone_not_confirmed':
          return const NetworkResult.failure(
              'Phone number not verified. Please verify your phone number.');
        case 'invalid_credentials':
          return const NetworkResult.failure(
              'Invalid phone number or password.');
        case 'user_not_found':
          return const NetworkResult.failure(
              'No account found with this phone number.');
        default:
          return NetworkResult.failure('Sign-in failed: ${e.message}');
      }
    } catch (e) {
      return NetworkResult.failure('Sign-in failed: ${e.toString()}');
    }
  }

  static bool _isValidPhoneNumber(String phoneNumber) {
    // Basic E.164 format: starts with +, followed by 10-15 digits
    final phoneRegex = RegExp(r'^\+\d{10,15}$');
    return phoneRegex.hasMatch(phoneNumber);
  }
}
