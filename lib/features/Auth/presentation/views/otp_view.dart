import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';

import '../../../../core/utils/styles.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
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
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
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

  void _submitOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    if (otp.length == 6) {
      // Here you would typically verify the OTP with your backend
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Verifying OTP: $otp')),
      );
      log('OTP submitted: $otp');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter complete OTP')),
      );
    }
  }

  void _handleOtpPaste(String value) {
    if (value.length == 6) {
      for (int i = 0; i < 6; i++) {
        _controllers[i].text = value[i];
        if (i < 5) {
          _focusNodes[i].unfocus();
          FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: ColorManager.greyCE,
          ),
          onPressed: () => context.pop(),
        ),
        // title: const Text('OTP Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verification Code',
              style: Styles.font22Bold,
              // style: Theme.of(context).textTheme.headline5,
            ),
            verticalSpace(15),
            Text(
              'We have sent the verification\n code to your phone number.',
              style: Styles.font18Meduim.copyWith(color: ColorManager.greyCE),
            ),
            verticalSpace(44),
            // OTP Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45,
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    style: const TextStyle(fontSize: 24),
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide: const BorderSide(
                          color: ColorManager.mainBlue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.r),
                        borderSide: const BorderSide(
                          color: ColorManager.mainBlue,
                          width: 2,
                        ),
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {
                      if (value.length == 1 && index < 5) {
                        _focusNodes[index].unfocus();
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index + 1]);
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index - 1]);
                      }
                    },
                    onTap: () {
                      // Select all text when tapping on a field
                      _controllers[index].selection = TextSelection(
                        // isDirectional: true,
                        baseOffset: 0,
                        extentOffset: _controllers[index].text.length,
                      );
                    },
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            // Timer and Resend Button
            _canResendOtp
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
                  ),
            verticalSpace(20),
            // Paste OTP button
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () async {
                  final clipboardData = await Clipboard.getData('text/plain');
                  if (clipboardData != null && clipboardData.text != null) {
                    _handleOtpPaste(clipboardData.text!);
                  }
                },
                child: Text(
                  'Paste OTP',
                  style: Styles.font16Semibold.copyWith(
                    color: ColorManager.darkBlue,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            AppTextButton(
              text: 'Submit',
              onPressed: _submitOtp,
            ),

            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
