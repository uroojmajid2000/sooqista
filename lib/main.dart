import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/screens/splash/controllers/splash_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_router.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/app_strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: AppColors.PRIMARY_COLOR,
    //   statusBarIconBrightness: Brightness.light,
    //   systemNavigationBarColor: AppColors.PRIMARY_COLOR,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // ));

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return GetMaterialApp(
            title: AppStrings.APP_TITLE_TEXT,
            debugShowCheckedModeBanner: false,
            scrollBehavior: ScrollBehaviorModified(),
            theme: ThemeData(
                fontFamily: AppFonts.interRegular,
                scaffoldBackgroundColor: AppColors.WHITE_COLOR,

                // primarySwatch: AppColors.wh,
                useMaterial3: false),
            initialRoute: AppRouteName.SPLASH_SCREEN_ROUTE,
            getPages: AppRouter.routes,
          );
        },
      ),
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}
