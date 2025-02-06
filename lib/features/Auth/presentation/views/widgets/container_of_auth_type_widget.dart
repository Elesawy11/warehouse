import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/constants.dart';
import '../../../../../core/utils/color_manager.dart';

class ContainerOfAuthTypeWidget extends StatefulWidget {
  const ContainerOfAuthTypeWidget({
    super.key,
  });

  @override
  State<ContainerOfAuthTypeWidget> createState() =>
      _ContainerOfAuthTypeWidgetState();
}

class _ContainerOfAuthTypeWidgetState extends State<ContainerOfAuthTypeWidget> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.grayF4,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.center,
            child: AuthTypeWidget(
              type: Constants.getAuthTypeList(context)[index],
              currentPage: currentPage,
              index: index,
              onTap: () {
                currentPage = index;
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}

class AuthTypeWidget extends StatelessWidget {
  const AuthTypeWidget({
    super.key,
    this.onTap,
    required this.index,
    required this.currentPage,
    required this.type,
  });
  final void Function()? onTap;
  final int index;
  final int currentPage;
  final String type;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: index == currentPage ? 4 : 0,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          width: (MediaQuery.of(context).size.width - 36.w) * 0.5,
          decoration: BoxDecoration(
            color: index == currentPage ? Colors.white : ColorManager.grayF4,
            borderRadius: BorderRadius.circular(8.r),
          ),
          alignment: Alignment.center,
          child: Text(
            type,
            style: Styles.font16Semibold,
          ),
        ),
      ),
    );
  }
}
