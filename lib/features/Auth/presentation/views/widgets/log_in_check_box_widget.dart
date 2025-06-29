import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

class LogInCheckBoxWidget extends StatefulWidget {
  const LogInCheckBoxWidget({
    super.key,
  });

  @override
  State<LogInCheckBoxWidget> createState() => _LogInCheckBoxWidgetState();
}

ValueNotifier<bool> isChecked = ValueNotifier(false);

class _LogInCheckBoxWidgetState extends State<LogInCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: isChecked,
          builder: (context, value, child) {
            return InkWell(
              onTap: () {
                isChecked.value = !isChecked.value;
              },
              child: Icon(
                isChecked.value
                    ? Icons.check_box
                    : Icons.check_box_outline_blank_outlined,
                size: 24.r,
                color: isChecked.value
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
