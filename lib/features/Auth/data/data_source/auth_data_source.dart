import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:warehouse_app/core/utils/supabase_init.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthDataSource {
  var client = SupabaseMethods.client;

  Future<UserModel> signUp(
      {required String email, required String password}) async {
    try {
      final response = await client.auth.signUp(
        password: password.trim(),
        email: email.trim(),
      );
      if (response.user != null) {
        return UserModel(
          id: response.user!.id,
          name: response.user!.userMetadata?['name'],
          email: response.user!.email!,
        );
      } else {
        throw Exception('Sign-Up Faild: No User Returned');
      }
    } on AuthException catch (e) {
      throw Exception("Sign-Up Faild: ${e.message}");
    }catch(e){
      throw Exception("Sign-Up Faild: $e");
    }
  }
}
