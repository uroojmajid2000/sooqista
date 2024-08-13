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
import 'package:sooqista_app/utills/constants.dart';
import 'package:sooqista_app/utills/field_validator.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/custom_textfield.dart';
import 'package:sooqista_app/widgets/fields_custom_text.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
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
                  'Reset Password',
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
                    'Please enter your new password',
                    style: TextStyle(
                      color: AppColors.HINT_COLOR,
                      fontSize: 14.sp,
                      fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Password *',
                ),
                10.verticalSpace,
                Obx(
                  () => CustomTextField(
                    hintText: 'Enter password',
                    isObsCure: controller.show_password_register.value,
                    textEditingController: controller.password,
                    validator: (value) => value?.validateNewPassword,
                    isLogin: true,
                    onIconTap: () {
                      controller.show_password_register.value =
                          !controller.show_password_register.value;
                    },
                  ),
                ),
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Confirm Password *',
                ),
                10.verticalSpace,
                Obx(
                  () => CustomTextField(
                    hintText: "Confirm password",
                    isObsCure: controller.show_confirm_password_register.value,
                    textEditingController: controller.confrim_password,
                    validator: (value) => value?.validateChangeNewPassword(
                      controller.password.text,
                      controller.confrim_password.text,
                    ),
                    isLogin: true,
                    onIconTap: () {
                      controller.show_confirm_password_register.value =
                          !controller.show_confirm_password_register.value;
                    },
                  ),
                ),
                60.verticalSpace,
                CustomButton(
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Submit",
                  onTap: () {
                    AppNavigation.navigateTo(
                        context, AppRouteName.LOGIN_SCREEN);
                  },
                ),
                200.verticalSpace,
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
}
