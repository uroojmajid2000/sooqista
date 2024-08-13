import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/skip_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        // appBar: AppBar(
        //   backgroundColor: AppColors.WHITE_COLOR,
        // automaticallyImplyLeading: false,
        // actions: [
        //   SkipButton(
        //     onTap: () {
        //       AppNavigation.navigateTo(context, AppRouteName.LOGIN_SCREEN);
        //     },
        //     text: "SKIP",
        //   )
        // ],
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SkipButton(
                      onTap: () {
                        AppNavigation.navigateToRemovingAll(
                            context, AppRouteName.WELCOME_SCREEN_ROUTE);
                      },
                      text: "SKIP",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 65.h,
              ),
              Image.asset(
                AssetPaths.SPLASH_LOGO,
                // fit: BoxFit.cover,
                width: 90.w,
                height: 90.h,
              ),
              10.verticalSpace,
              Text(
                'SOOQISTA',
                style: TextStyle(
                  color: AppColors.BLACK_COLOR,
                  fontSize: 32.sp,
                  fontFamily: AppFonts.inikaRegular,
                  fontWeight: FontWeight.w400,
                ),
              ),
              40.verticalSpace,
              SizedBox(
                width: 320.w,
                child: Text(
                  'Welcome To SOOQISTA !',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 320.w,
                child: Text(
                  'Dive in now and make the most of your shopping experience!"',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                buttonColor: AppColors.BLACK_COLOR,
                buttonText: "Register Now",
                onTap: () {
                  AppNavigation.navigateTo(
                    context,
                    AppRouteName.REGISTER_SCREEN,
                  );
                },
              ),
              30.verticalSpace,
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.verticalSpace,
              CustomButton(
                textColor: AppColors.PRIMARY_COLOR,
                withBorderOnly: true,
                buttonColor: AppColors.BLACK_COLOR,
                buttonText: "Log In",
                onTap: () {
                  AppNavigation.navigateTo(
                    context,
                    AppRouteName.LOGIN_SCREEN,
                  );
                },
              ),
              5.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
