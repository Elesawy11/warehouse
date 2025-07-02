import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/paste_otp_button.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/resend_otp_button.dart';

import '../../../../core/utils/styles.dart';
import 'widgets/list_of_otp_text_field.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verification Code',
              style: Styles.font22Bold,
            ),
            verticalSpace(15),
            Text(
              'We have sent the verification\n code to your phone number.',
              style: Styles.font18Meduim.copyWith(color: ColorManager.greyCE),
            ),
            verticalSpace(44),
            // OTP Fields
            ListOfOtpTextField(
              controllers: _controllers,
              focusNodes: _focusNodes,
            ),
            const SizedBox(height: 20),
            // Timer and Resend Button
            const ResendOtpButton(),
            verticalSpace(20),
            // Paste OTP button
            PasteOtpButton(
              controllers: _controllers,
              focusNodes: _focusNodes,
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
