import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/splash/controllers/splash_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.PRIMARY_COLOR,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AssetPaths.BG_SPLASH_SCREEN,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 50.verticalSpace,

                Image.asset(
                  AssetPaths.SPLASH_LOGO,
                  // fit: BoxFit.cover,
                  width: 90.w,
                  height: 90.h,
                ),
                4.verticalSpace,
                Text(
                  'SOOQISTA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.sp,
                    fontFamily: AppFonts.inikaRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                4.verticalSpace,
                Text(
                  'Where Deals Meet Delight !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontFamily: AppFonts.interMedium,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // 100.verticalSpace,
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
