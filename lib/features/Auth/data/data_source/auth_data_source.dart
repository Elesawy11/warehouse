import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:warehouse_app/core/utils/supabase_init.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthDataSource {
  var client = SupabaseMethods.client;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final response = await client.auth.signUp(
        password: password.trim(),
        email: email.trim(),
        data: {'name': name.trim()},
      );
      if (response.user != null) {
        return UserModel(
          id: response.user!.id,
          name: response.user!.userMetadata?['name'] ?? 'not found',
          email: response.user!.email!,
        );
      } else {
        throw Exception('Sign-Up Faild: No User Returned');
      }
    } on AuthException catch (e) {
      throw Exception("Sign-Up Faild: ${e.message}");
    } catch (e) {
      throw Exception("Sign-Up Faild: $e");
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      final response = await client.auth.signInWithPassword(
        email: email.trim(),
        password: password.trim(),
      );
      if (response.user != null) {
        return;
      } else {
        throw Exception('Sign-In Faild: No User Returned');
      }
    } on AuthException catch (e) {
      if (e.code == 'email_not_confirmed') {
        return;
      }
      throw Exception("Sign-In Faild: ${e.message}");
    } catch (e) {
      throw Exception("Sign-In Faild: $e");
    }
  }

  Future<AuthResponse> signInWithPhoneNumber(
      {required String phoneNumber, required String password}) async {
    final response = await client.auth.signInWithPassword(
      phone: phoneNumber,
      password: password,
    );
    return response;
  }
}
