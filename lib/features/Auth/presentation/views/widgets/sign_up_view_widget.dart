import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/service_locator.dart';
import 'package:warehouse_app/core/utils/supabase_init.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_variables_cubit/sign_up_variables_cubit.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class SignUpViewWidget extends StatelessWidget {
  const SignUpViewWidget({super.key});

  // bool isSecure = true;
  // bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpVariablesCubit(),
        ),
        BlocProvider(
          create: (context) => getIt.get<SignUpCubit>(),
        ),
      ],
      child: SingleChildScrollView(
        child: Form(
          // key: GlobalKey(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).name,
                style: Styles.font16Regular,
              ),
              verticalSpace(6),
              AppTextFormField(
                backgroundColor: ColorManager.greyF4,
                hintStyle: Styles.font14Regular.copyWith(
                  color: ColorManager.grey75,
                ),
                hintText: S.of(context).enterName,
                validator: (value) {},
              ),
              verticalSpace(24),
              Text(
                S.of(context).email,
                style: Styles.font16Regular,
              ),
              verticalSpace(6),
              AppTextFormField(
                backgroundColor: ColorManager.greyF4,
                hintStyle: Styles.font14Regular.copyWith(
                  color: ColorManager.grey75,
                ),
                hintText: S.of(context).enterEmail,
                validator: (value) {},
              ),
              verticalSpace(24),
              Text(
                S.of(context).password,
                style: Styles.font16Regular,
              ),
              verticalSpace(6),
              BlocBuilder<SignUpVariablesCubit, SignUpVariablesState>(
                builder: (context, state) {
                  final cubit = context.read<SignUpVariablesCubit>();
                  return AppTextFormField(
                    backgroundColor: ColorManager.greyF4,
                    hintStyle: Styles.font14Regular.copyWith(
                      color: ColorManager.grey75,
                    ),
                    suffixIcon: InkWell(
                      onTap: () => cubit.secure(),
                      child: Icon(
                        cubit.isSecure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                    hintText: S.of(context).enterPassword,
                    validator: (value) {},
                    isObscureText: cubit.isSecure,
                  );
                },
              ),
              verticalSpace(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<SignUpVariablesCubit, SignUpVariablesState>(
                    builder: (context, state) {
                      final cubit = context.read<SignUpVariablesCubit>();

                      return InkWell(
                        onTap: () => cubit.check(),
                        child: Icon(
                          cubit.isChecked
                              ? Icons.check_box
                              : Icons.check_box_outline_blank_outlined,
                          size: 24.r,
                          color: cubit.isChecked
                              ? ColorManager.mainBlue
                              : ColorManager.grey9E,
                        ),
                      );
                    },
                  ),
                  horizontalSpace(12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      S.of(context).signupConsent,
                      style: Styles.font16Regular,
                    ),
                  ),
                ],
              ),
              verticalSpace(40),
              AppTextButton(
                text: S.of(context).signUp,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
