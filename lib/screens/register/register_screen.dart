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

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  'Register Here',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 20.sp,
                    fontFamily: AppFonts.interSemiBold,
                     fontWeight: FontWeight.w600,
                  ),
                ),
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Full Name',
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: 'Enter Full Name',
                  // textEditingController: controller.firstName,
                  validator: (value) => value?.validateEmpty('name'),
                  keyboardType: TextInputType.name,
                  textInputFormattors: [
                    LengthLimitingTextInputFormatter(
                      Constants.NAME_MAX_LENGTH,
                    )
                  ],
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
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Phone Number',
                ),
                10.verticalSpace,
                IntlPhoneField(
                  cursorColor: AppColors.PRIMARY_COLOR,
                  disableLengthCheck: true,
                  showDropdownIcon: false,
                  autovalidateMode: AutovalidateMode
                      .onUserInteraction, // Change to onUserInteraction
                  // controller: controller.phoneNo,
                  onCountryChanged: (value) {
                    controller.countryCode.value = value.dialCode.toString();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.WHITE_COLOR,
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFDADADA), width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFDADADA), width: 1.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: AppColors.HINT_COLOR),
                  ),
                  initialCountryCode: 'PK',
                  validator: (value) {
                    if (value == null) {
                      return 'Empty Phone Number';
                    }
                    return value.completeNumber.validatePhoneNumber;
                  },
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                10.verticalSpace,
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
                    SizedBox(width: 8.w),
                    Text(
                      'I agree to all terms & conditions, Privacy policy.',
                      style: TextStyle(
                          color: AppColors.TERMS_AND_CONDITION,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                            fontWeight: FontWeight.w500,
                            ),
                    ),
                  ],
                ),
                20.verticalSpace,
                CustomButton(
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Register Now",
                  onTap: () {
                    // AppNavigation.navigatorPop(context);
                    // AppNavigation.navigateTo(
                    //     context, AppRouteName.WELCOME_SCREEN_ROUTE);

                    AppNavigation.navigateTo(
                        context, AppRouteName.LOGIN_SCREEN);
                  },
                ),
                05.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
