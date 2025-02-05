import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 8.0,
          shadowColor: Colors.blueAccent.withOpacity(0.5),
          color: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Custom Shaped Shadow',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
