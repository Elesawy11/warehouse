import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class SystemSettingSwitchWidget extends StatefulWidget {
  const SystemSettingSwitchWidget({
    super.key,
    required this.field,
    this.hasBorder = true,
  });
  final String field;
  final bool hasBorder;

  @override
  State<SystemSettingSwitchWidget> createState() =>
      _SystemSettingSwitchWidgetState();
}

class _SystemSettingSwitchWidgetState extends State<SystemSettingSwitchWidget> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: widget.hasBorder
            ? Border(
                bottom: BorderSide(
                  color: ColorManager.greyED,
                  width: 1.w,
                ),
              )
            : null,
      ),
      child: Row(
        children: [
          Text(
            widget.field,
            style: Styles.font18Meduim.copyWith(
              color: ColorManager.subText,
            ),
          ),
          const Spacer(),
          Switch(
            value: isActive,
            activeTrackColor: ColorManager.mainBlue,
            activeColor: Colors.white,
            inactiveTrackColor: ColorManager.greyED,
            inactiveThumbColor: ColorManager.greyC2,
            onChanged: (value) {
              isActive = value;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
