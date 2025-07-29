import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class SettingsItemSwitchWidget extends StatefulWidget {
  const SettingsItemSwitchWidget({
    super.key,
    required this.label,
    this.onTap,
  });
  final String label;

  final void Function()? onTap;

  @override
  State<SettingsItemSwitchWidget> createState() =>
      _SettingsItemSwitchWidgetState();
}

class _SettingsItemSwitchWidgetState extends State<SettingsItemSwitchWidget> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorManager.greyED,
              width: 1.w,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: Styles.font16Semibold.copyWith(
                color: ColorManager.grey75,
              ),
            ),
            const Spacer(),
            Switch(
              activeColor: Colors.white,
              activeTrackColor: ColorManager.mainBlue,
              inactiveTrackColor: ColorManager.greyED,
              inactiveThumbColor: ColorManager.greyC2,
              value: isSwitched,
              onChanged: (value) {
                isSwitched = !isSwitched;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
