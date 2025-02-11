import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/utils/service_locator.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/auth_scroll_cubit/auth_scroll_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'container_of_auth_type_widget.dart';
import 'login_view_widget.dart';
import 'sign_up_view_widget.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            BlocBuilder<AuthScrollCubit, AuthScrollState>(
              builder: (context, state) {
                return const ContainerOfAuthTypeWidget();
              },
            ),
            verticalSpace(40),
            Expanded(
              child: BlocBuilder<AuthScrollCubit, AuthScrollState>(
                builder: (context, state) {
                  var cubit = context.read<AuthScrollCubit>();
                  return PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: cubit.controller,
                    children: [
                      const LoginViewWidget(),
                      BlocProvider(
                        create: (context) => getIt.get<SignUpCubit>(),
                        child: const SignUpViewWidget(),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
