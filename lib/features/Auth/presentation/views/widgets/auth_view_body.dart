import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/auth_scroll_cubit/auth_scroll_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'container_of_auth_type_widget.dart';
import 'login_view_widget.dart';
import 'sign_up_view_widget.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody({
    super.key,
  });

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

ValueNotifier<int> _currentPage = ValueNotifier(0);
final PageController _pageController = PageController();

class _AuthViewBodyState extends State<AuthViewBody> {
  @override
  void initState() {
    _pageController.addListener(() {
      _currentPage.value = _pageController.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, value, child) {
            return Column(
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
                ContainerOfAuthTypeWidget(
                  pageController: _pageController,
                  currentPage: _currentPage,
                ),
                verticalSpace(40),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      BlocProvider(
                        create: (context) => getIt.get<LogInCubit>(),
                        child: const LoginViewWidget(),
                      ),
                      BlocProvider(
                        create: (context) => getIt.get<SignUpCubit>(),
                        child: const SignUpViewWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
