import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warehouse_app/core/routing/app_router.dart';
import 'package:warehouse_app/core/utils/change_system_ui_mode.dart';
import 'generated/l10n.dart';

class WarehouseAppBody extends StatelessWidget {
  const WarehouseAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    changeSystemUiMode();

    return ScreenUtilInit(
      designSize: const Size(412, 916),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        locale: const Locale('ar'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            surface: Colors.white,
          ),
        ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
