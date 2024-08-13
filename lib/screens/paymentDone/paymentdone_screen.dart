import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class PaymentdoneScreen extends StatefulWidget {
  const PaymentdoneScreen({super.key});

  @override
  State<PaymentdoneScreen> createState() => _PaymentdoneScreenState();
}

class _PaymentdoneScreenState extends State<PaymentdoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Payment Done',
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 16.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetPaths.CHECKMARK_IMAGE),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Payment Done',
                style: TextStyle(
                  color: AppColors.PAYMENT_DONE_COLOR,
                  fontSize: 30.sp,
                  fontFamily: AppFonts.interSemiBold,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Your payment has been done successfully.',
                style: TextStyle(
                  color: AppColors.HINT_COLOR,
                  fontSize: 14.sp,
                  fontFamily: AppFonts.interSemiBold,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'For more details check your account',
                style: TextStyle(
                  color: AppColors.HINT_COLOR,
                  fontSize: 14.sp,
                  fontFamily: AppFonts.interSemiBold,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                buttonColor: AppColors.BLACK_COLOR,
                buttonText: "Continue Shopping",
                onTap: () {
                  // AppNavigation.navigatorPop(context);
                  AppNavigation.navigateTo(
                      context, AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE);
                },
              ),
              SizedBox(
                height: 200.h,
              ),
            ],
          ),
        ));
  }
}
