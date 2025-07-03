import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/helpers/spacer.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/paste_otp_button.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/resend_otp_button.dart';

import '../../../../core/helpers/custom_snack_bar_method.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/styles.dart';
import '../cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import '../cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_state.dart';
import 'widgets/list_of_otp_text_field.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpWithPhoneNumberCubit>();
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
      body:
          BlocConsumer<SignUpWithPhoneNumberCubit, SignUpWithPhoneNumberState>(
        listener: (context, state) {
          if (state is VerifyCodeError) {
            customSnackBarMethod(context, state.error);
          } else if (state is VerifyCodeSuccess) {
            context.pushReplacement(Routes.home);
          }
        },
        builder: (context, state) {
          return Padding(
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
                  style:
                      Styles.font18Meduim.copyWith(color: ColorManager.greyCE),
                ),
                verticalSpace(44),
                // OTP Fields
                ListOfOtpTextField(
                  controllers: cubit.controllers,
                  focusNodes: cubit.focusNodes,
                ),
                const SizedBox(height: 20),
                // Timer and Resend Button
                const ResendOtpButton(),
                verticalSpace(20),
                // Paste OTP button
                PasteOtpButton(
                  controllers: cubit.controllers,
                  focusNodes: cubit.focusNodes,
                ),
                const Spacer(
                  flex: 4,
                ),
                AppTextButton(
                  text: 'Submit',
                  onPressed: () => cubit.verifyOtp(phoneNumber: phoneNumber),
                  child: state is VerifyCodeLoading
                      ? Center(
                          child: SizedBox(
                            width: 24.r,
                            height: 24.r,
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : null,
                ),
                const Spacer(flex: 1),
              ],
            ),
          );
        },
      ),
    );
  }
}
