import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/utils/supabase_init.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  _PhoneLoginScreenState createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();
  String? _verificationId;
  bool _codeSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (!_codeSent) ...[
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: '+44 7123 123456',
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: signinWithPhoneAndPassword,
                // onPressed: () {},
                child: const Text('Send Verification Code'),
              ),
            ] else ...[
              Text('Enter the 6-digit code sent to ${_phoneController.text}'),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: 'Verification Code'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: verifyOTP,
                // onPressed: () {},
                child: const Text('Verify Code'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // Future<void> _verifyPhoneNumber() async {
  //   await getIt.get<FirebaseAuth>().verifyPhoneNumber(
  //         phoneNumber: '+20 1019986026',
  //         verificationCompleted: (PhoneAuthCredential credential) async {
  //           // Auto-sign-in on Android
  //           // await _signInWithCredential(credential);
  //           log('message: Verification completed automatically');
  //         },
  //         verificationFailed: (FirebaseAuthException e) {
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(content: Text('Error: ${e.message}')),
  //           );
  //           log('Verification failed: ${e.message}');
  //         },
  //         codeSent: (String verificationId, int? resendToken) {
  //           setState(() {
  //             _verificationId = verificationId;
  //             _codeSent = true;
  //           });
  //           log('verificationId: Code sent to $verificationId');
  //         },
  //         codeAutoRetrievalTimeout: (String verificationId) {
  //           // Handle timeout if needed
  //         },
  //         timeout: const Duration(seconds: 60),
  //       );
  // }

  // Future<void> _verifySMSCode() async {
  //   String smsCode = '123456';

  //   if (_verificationId != null) {
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: _verificationId!,
  //       smsCode: smsCode,
  //     );

  //     await _signInWithCredential(credential);
  //     log('message: SMS code verified successfully');
  //   }
  // }

  // Future<void> _signInWithCredential(PhoneAuthCredential credential) async {
  //   try {
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //     // Navigate to home screen or perform post-login actions
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //           content: Text('Login done: ${userCredential.user?.phoneNumber}')),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Login failed: ${e.message}')),
  //     );
  //   }
  // }

  Future<void> signUpWithPhone(
      {required String name,
      required String phone,
      required String password}) async {
    try {
      // This sends the OTP immediately
      final AuthResponse res = await SupabaseMethods.client.auth.signUp(
        data: {'name': 'Ahmed Elesawy'},
        phone: '+201019986026',
        password: '123456789',
        channel: OtpChannel.sms,
      );
    } catch (e) {
      log('Error during signup: $e');
    }
  }

  Future<void> verifyOTP() async {
    try {
      final AuthResponse res = await SupabaseMethods.client.auth.verifyOTP(
        phone: '+201019986026',
        token: '465634',
        type: OtpType.sms,
      );

      // Now the user is fully registered and logged in
      log('User verified: ${res.user?.id}');
    } catch (e) {
      log('Error verifying OTP: $e');
    }
  }

  Future<void> signinWithPhoneAndPassword() async {
    try {
      final AuthResponse res =
          await SupabaseMethods.client.auth.signInWithPassword(
        phone: '+201019986026', // include country code
        password: '123456789',
      );
      log('message: User signed in with phone: ${res.user?.id}');
    } on Exception catch (e) {
      log('message: Error signing in with phone: $e');
    }
  }
}
