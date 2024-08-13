import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sooqista_app/utills/app_colors.dart';

class CustomPinCodeField extends StatelessWidget {
  void Function(String) onChanged;
  void Function(String)? onCompleted;
  final TextEditingController? controller;
  CustomPinCodeField(
      {Key? key, required this.onChanged, this.controller, this.onCompleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      pastedTextStyle: const TextStyle(
        color: AppColors.PRIMARY_COLOR,
        fontWeight: FontWeight.bold,
      ),
      autoFocus: true,
      length: 4,
      obscureText: false,
      obscuringCharacter: '*',
      // hintCharacter: '-',
      // animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      autoDisposeControllers: false,
      pinTheme: PinTheme(
          //   activeFillColor:
          //       AppColors.WHITE_COLOR, //! ============> Ineer Color Active
          //   activeColor:
          //       AppColors.PINK_TEXT_COLOR, //! ============> Outer Color Active
          //   inactiveFillColor: AppColors.WHITE_COLOR,
          //   inactiveColor: AppColors.PINK_TEXT_COLOR,
          //   selectedColor: AppColors.PINK_TEXT_COLOR,
          //   selectedFillColor: AppColors.WHITE_COLOR,
          //   shape: PinCodeFieldShape.box,
          //   borderRadius: BorderRadius.all(Radius.circular(12.r)),
          //   fieldHeight: 42.h,
          //   fieldWidth: 48.w,
          // ),
          // boxShadows: [
          //   BoxShadow(
          //       color: Colors.grey.withOpacity(0.5),
          //       blurRadius: 1.0,
          //       spreadRadius: 1.0,
          //       offset: const Offset(
          //         0.0, // Move to right 7.0 horizontally
          //         3.0, // Move to bottom 8.0 Vertically
          //       ))
          // ],
          // cursorColor: AppColors.PINK_TEXT_COLOR,
          // animationDuration: const Duration(milliseconds: 300),
          // textStyle: const TextStyle(
          //     fontSize: 20, height: 1.6, color: AppColors.PINK_TEXT_COLOR),
          // enableActiveFill: true,
          // fieldOuterPadding:
          //     EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),

          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          // activeBoxShadow: [
          //   BoxShadow(
          //       color: AppColors.HINT_COLOR, blurRadius: 2.0, spreadRadius: 0.4)
          // ],
          // inActiveBoxShadow: [
          //   BoxShadow(
          //       color: AppColors.HINT_COLOR, blurRadius: 2.0, spreadRadius: 0.4)
          // ],
          fieldHeight: 55.h,
          fieldWidth: 50.w,
          activeFillColor:
              AppColors.WHITE_COLOR, //! ============> Ineer Color Active
          activeColor:
              AppColors.PRIMARY_COLOR, //! ============> Outer Color Active
          inactiveFillColor: AppColors.WHITE_COLOR,
          inactiveColor: Color(0xffDBDBDB),
          selectedColor: AppColors.PRIMARY_COLOR,
          selectedFillColor: AppColors.WHITE_COLOR),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      controller: controller,
      onCompleted: onCompleted,
      //  (v) {
      // print(widget.isSignUp);
      // if (_pinCtrl.text != "123456") {
      //   AppDialogs.showToast(message: "Invalid OTP verification code");
      // } else {
      //   if (widget.isSignUp == true) {
      //     AppNavigation.navigateToRemovingAll(
      //         context, AppRouteName.COMPLETE_PROFILE_SCREEN_ROUTE,
      //         arguments: true);
      //   } else if (widget.isSignUp == false) {
      //     AppNavigation.navigateToRemovingAll(
      //         context, AppRouteName.COMPLETE_PROFILE_SCREEN_ROUTE,
      //         arguments: true);
      //   } else {
      //     AppNavigation.navigateReplacementNamed(
      //         context, AppRouteName.RESET_PASSWORD_SCREEN_ROUTE);
      //   }
      // }
      //  },
      onChanged: onChanged,
      //     (value) {
      //   print(value);
      // },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        return true;
      },
    );
  }
}
