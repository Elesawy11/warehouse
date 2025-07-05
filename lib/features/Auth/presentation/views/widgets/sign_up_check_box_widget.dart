import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

class SignUpCheckBoxWidget extends StatefulWidget {
  const SignUpCheckBoxWidget({
    super.key,
    required this.isChecked,
  });
  final ValueNotifier<bool> isChecked;
  @override
  State<SignUpCheckBoxWidget> createState() => _SignUpCheckBoxWidgetState();
}

class _SignUpCheckBoxWidgetState extends State<SignUpCheckBoxWidget> {
  // ValueNotifier<bool> isChecked = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: widget.isChecked,
          builder: (context, value, child) {
            return InkWell(
              onTap: () {
                widget.isChecked.value = !widget.isChecked.value;
              },
              child: Icon(
                widget.isChecked.value
                    ? Icons.check_box
                    : Icons.check_box_outline_blank_outlined,
                size: 24.r,
                color: widget.isChecked.value
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
    );
  }
}
