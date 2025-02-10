import 'package:warehouse_app/core/utils/supabase_init.dart';

class SupabaseSignUp {
  final client = SupabaseMethods.client;
  Future<void> signUp({required String email, required String password}) async {
    await client.auth.signUp(
      email: email,
      password: password,
    );
  }
}
