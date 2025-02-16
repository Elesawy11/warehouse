import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/log_in_variables_cubit/log_in_variables_cubit.dart';

class LogInCheckBoxWidget extends StatelessWidget {
  const LogInCheckBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<LogInVariablesCubit, LogInVariablesState>(
          builder: (context, state) {
            final cubit = context.read<LogInVariablesCubit>();
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
        Text(
          S.of(context).rememberMe,
          style: Styles.font16Regular,
        ),
      ],
    );
  }
}
