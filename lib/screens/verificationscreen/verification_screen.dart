import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/register/controller/register_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/custom_pin_code.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.h,
                ),
                Center(
                  child: Image.asset(
                    AssetPaths.SPLASH_LOGO,
                    // fit: BoxFit.cover,
                    width: 50.w,
                    height: 50.h,
                  ),
                ),
                40.verticalSpace,
                Text(
                  'Verification Code',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 20.sp,
                    fontFamily: AppFonts.interSemiBold,
                     fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 315,
                  child: Text(
                    'Please enter the 4 digit code has send to abc@gmail.com',
                    style: TextStyle(
                      color: AppColors.HINT_COLOR,
                      fontSize: 14.sp,
                      fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                20.verticalSpace,
                pinField(context: context),
                Center(
                  child: Text(
                    'Expire code in 00:59',
                    style: TextStyle(
                        color: AppColors.HINT_COLOR,
                        fontSize: 12.sp,
                        fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,),

                  ),
                ),
                40.verticalSpace,
                CustomButton(
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Verify",
                  onTap: () {
                    AppNavigation.navigateTo(
                        context, AppRouteName.RESETPASSWORD_SCREEN);
                  },
                ),
                20.verticalSpace,
                Row(
                  children: [
                    Text(
                      'Didn’t receive OTP?',
                      style: TextStyle(
                          color: AppColors.BLACK_COLOR,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                            fontWeight: FontWeight.w500,
                            ),
                    ),
                    5.horizontalSpace,
                    Text(
                      'Resend',
                      style: TextStyle(
                          color: AppColors.TERMS_AND_CONDITION,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                            fontWeight: FontWeight.w500,),

                    ),
                  ],
                ),
                290.verticalSpace,
                Center(
                  child: GestureDetector(
                    onTap: () {
                      AppNavigation.navigateToRemovingAll(
                          context, AppRouteName.LOGIN_SCREEN);
                    },
                    child: Text(
                      'Back to Log In',
                      style: TextStyle(
                          color: AppColors.TERMS_AND_CONDITION,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                            fontWeight: FontWeight.w500,),
                    ),
                  ),
                ),
                50.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pinField({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomPinCodeField(
        // controller: controller.pin_controller,
        onChanged: (value) {
          print(value);
        },
        onCompleted: (v) {
          FocusManager.instance.primaryFocus?.unfocus();
          // controller.pin_controller.text = v;
        },
      ),
    );
  }
}
