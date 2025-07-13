import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/helpers/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'auth_methods_widgets.dart';
import 'container_of_auth_type_widget.dart';

class AuthViewBody extends StatefulWidget {
  const AuthViewBody({
    super.key,
  });

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  final ValueNotifier<int> _currentPage = ValueNotifier(0);
  final PageController _pageController = PageController();
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
                verticalSpace(30),
                ContainerOfAuthTypeWidget(
                  pageController: _pageController,
                  currentPage: _currentPage,
                ),
                verticalSpace(30),
                AuthMethodsWidgets(
                  pageController: _pageController,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
