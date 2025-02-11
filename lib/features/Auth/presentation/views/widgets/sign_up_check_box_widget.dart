import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/sign_up_variables_cubit/sign_up_variables_cubit.dart';

class SignUpCheckBoxWidget extends StatelessWidget {
  const SignUpCheckBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpVariablesCubit(),
      child: Row(
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
    );
  }
}
