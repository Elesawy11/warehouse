import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ResendOtpButton extends StatefulWidget {
  const ResendOtpButton({
    super.key,
  });
  // final bool canResendOtp;

  @override
  State<ResendOtpButton> createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  int _remainingSeconds = 60;
  late Timer _timer;
  bool _canResendOtp = false;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _remainingSeconds = 60;
    _canResendOtp = false;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _canResendOtp = true;
          _timer.cancel();
        }
      });
    });
  }

  void _resendOtp() {
    // Here you would typically resend the OTP
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('OTP has been resent')),
    );
    _startTimer(); // Restart the timer
  }

  @override
  Widget build(BuildContext context) {
    return _canResendOtp
        ? Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: _resendOtp,
              child: Text(
                'Resend OTP',
                style: Styles.font16Semibold.copyWith(
                  color: ColorManager.darkBlue,
                ),
              ),
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Text(
              'Resend OTP in ${_remainingSeconds}s',
              style: Styles.font16Semibold.copyWith(
                color: ColorManager.darkBlue,
              ),
            ),
          );
  }
}
