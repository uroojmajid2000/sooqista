import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/constants.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/custom_textfield.dart';
import 'package:sooqista_app/widgets/fields_custom_text.dart';
import 'package:sooqista_app/utills/field_validator.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({super.key});

  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Customer Details',
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.verticalSpace,
                FieldsCustomText(
                  text: 'Name',
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
                  text: 'Full Address *',
                ),
                10.verticalSpace,
                CustomTextField(
                  hintText: 'Enter your shipping address',
                  // textEditingController: controller.email_login,
                  // validator: (value) => value?.validateEmail,
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 2,
                  // textInputFormattors: [
                  //   LengthLimitingTextInputFormatter(
                  //     Constants.EMAIL_MAX_LENGTH,
                  //   )
                  // ],
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
                  buttonColor: AppColors.BLACK_COLOR,
                  buttonText: "Continue",
                  onTap: () {
                    // AppNavigation.navigatorPop(context);
                    // AppNavigation.navigateTo(
                    //     context, AppRouteName.WELCOME_SCREEN_ROUTE);

                    AppNavigation.navigateTo(
                      context,
                      AppRouteName.ORDERDETAILS_ROUTE,
                    );
                  },
                ),
                05.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
