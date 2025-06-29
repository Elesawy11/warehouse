import 'package:firebase_auth/firebase_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:warehouse_app/core/utils/supabase_init.dart';
import 'package:warehouse_app/features/Auth/data/models/user_model.dart';

class AuthDataSource {
  var client = SupabaseMethods.client;
  FirebaseAuth auth = FirebaseAuth.instance;

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
        phone: email.trim(),
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

  Future<void> signinWithPhoneNumber() async {
    await auth.verifyPhoneNumber(
      phoneNumber: '+44 7123 123 456',
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!

        // Sign the user in (or link) with the auto-generated credential
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }

        // Handle other errors
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxxx';

        // Create a PhoneAuthCredential with the code
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
      },
    );
  }
}
