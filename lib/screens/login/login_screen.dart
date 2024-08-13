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

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
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
                10.verticalSpace,
                Text(
                  'Login',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 20.sp,
                    fontFamily: AppFonts.interSemiBold,
                     fontWeight: FontWeight.w600,
                  ),
                ),
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Email *',
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: 'Enter Email address',
                  // textEditingController: controller.email_login,
                  validator: (value) => value?.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputFormattors: [
                    LengthLimitingTextInputFormatter(
                      Constants.EMAIL_MAX_LENGTH,
                    )
                  ],
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
                13.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: controller.toggleAccepted,
                          child: Obx(
                            () => Container(
                              width: 13.w,
                              height: 13.h,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1.w, color: AppColors.HINT_COLOR),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                color: controller.isAccepted.value
                                    ? AppColors.HINT_COLOR
                                    : Colors.transparent,
                              ),
                              child: controller.isAccepted.value
                                  ? Icon(Icons.check,
                                      size: 8, color: AppColors.WHITE_COLOR)
                                  : SizedBox.shrink(),
                            ),
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          'Remember me',
                          style: TextStyle(
                              color: Color(0xFF363232),
                              fontSize: 12.sp,
                              fontFamily: AppFonts.interMedium,
                                fontWeight: FontWeight.w500,),

                        )
                      ],
                    ),
                    SizedBox(width: 8.w),
                    GestureDetector(
                      onTap: () {
                        AppNavigation.navigateTo(
                          context,
                          AppRouteName.FORGETPASSWORD_SCREEN,
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: AppColors.TERMS_AND_CONDITION,
                            fontSize: 12.sp,
                            fontFamily: AppFonts.interMedium,
                              fontWeight: FontWeight.w500,),
                      ),
                    ),
                  ],
                ),
                60.verticalSpace,
                CustomButton(
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Log In",
                  onTap: () {
                    AppNavigation.navigateTo(
                        context, AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE);
                  },
                ),
                180.verticalSpace,
                Center(
                  child: Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: AppFonts.interRegular,
                               fontWeight: FontWeight.w400,),
                  ),
                ),
                10.verticalSpace,
                CustomButton(
                  textColor: AppColors.PRIMARY_COLOR,
                  withBorderOnly: true,
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Register Now",
                  onTap: () {
                    AppNavigation.navigateTo(
                      context,
                      AppRouteName.REGISTER_SCREEN,
                    );
                  },
                ),
                5.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
