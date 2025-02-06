import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'package:warehouse_app/core/utils/color_manager.dart';
import 'package:warehouse_app/core/utils/spacer.dart';
import 'package:warehouse_app/core/utils/styles.dart';
import 'package:warehouse_app/core/widgets/app_text_button.dart';
import 'package:warehouse_app/core/widgets/app_text_form_field.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/login_view_widget.dart';
import 'package:warehouse_app/features/Auth/presentation/views/widgets/sign_up_view_widget.dart';
import 'widgets/container_of_auth_type_widget.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
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
                fit: BoxFit.cover,
              ),
              Text(
                'Stockly',
                style: Styles.font32Bold,
              ),
              verticalSpace(40),
              const ContainerOfAuthTypeWidget(),
              verticalSpace(40),
              // LoginViewWidget(),
              Expanded(
                child: PageView(
                  children: [
                    LoginViewWidget(),
                    SignUpViewWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
