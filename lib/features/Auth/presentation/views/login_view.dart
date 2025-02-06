import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/spacer.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'widgets/container_of_auth_type_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Image.asset(
                Assets.imagesOnboarding1,
              ),
              Text(
                'Stockly',
                style: Styles.font32Bold,
              ),
              verticalSpace(40),
              ContainerOfAuthTypeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
