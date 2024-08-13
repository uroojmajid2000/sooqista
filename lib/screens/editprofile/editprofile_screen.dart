import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sooqista_app/screens/register/controller/register_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/utills/constants.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/custom_textfield.dart';
import 'package:sooqista_app/widgets/fields_custom_text.dart';
import 'package:sooqista_app/utills/field_validator.dart';

class EditprofileScreen extends StatefulWidget {
  const EditprofileScreen({super.key});

  @override
  State<EditprofileScreen> createState() => _EditprofileScreenState();
}

class _EditprofileScreenState extends State<EditprofileScreen> {
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Your Profile',
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 16.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: AppColors.BLACK_COLOR)),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 15),
          //     child: GestureDetector(
          //         onTap: () {},
          //         child: Image.asset(
          //           AssetPaths.HWISH_ICON_APPBAR,
          //           color: AppColors.BLACK_COLOR,
          //           width: 24.w,
          //           height: 24.h,
          //         )),
          //   ),
          // ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(AssetPaths.DOLL_IMAGE),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    'Change Image',
                    style: TextStyle(
                      color: AppColors.TERMS_AND_CONDITION,
                      fontSize: 12.sp,
                      fontFamily: AppFonts.interMedium,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Text(
                    'QuratulAin Annie',
                    style: TextStyle(
                      color: AppColors.BLACK_COLOR,
                      fontSize: 14.sp,
                      fontFamily: AppFonts.interMedium,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
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
                    // controller.countryCode.value = value.dialCode.toString();
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
                20.verticalSpace,
                CustomButton(
                    width: 180.w,
                    height: 38.h,
                    buttonColor: AppColors.PRIMARY_COLOR,
                    onTap: () {},
                    buttonText: "Save Changes"),
                30.verticalSpace,
                Text(
                  'Change Password',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 20.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Current Password *',
                ),
                10.verticalSpace,
                Obx(
                  () => CustomTextField(
                    hintText: 'Current password',
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
                  text: 'New Password *',
                ),
                10.verticalSpace,
                Obx(
                  () => CustomTextField(
                    hintText: 'Enter New password',
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
                CustomButton(
                    width: 180.w,
                    height: 38.h,
                    buttonColor: AppColors.PRIMARY_COLOR,
                    onTap: () {},
                    buttonText: "Save Changes"),
                10.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
