import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.buttonColor,
    required this.onTap,
    required this.buttonText,
    this.icon,
    this.padding,
    this.height,
    this.width,
    this.containsIcon = false,
    this.fontFamily,
    this.fontSize = 18,
    this.textColor = Colors.white,
    this.lowerGradientColor,
    this.upperGradientColor,
    this.borderRadius,
    this.withBorderOnly = false,
  }) : super(key: key);

  final Color buttonColor;
  final Color textColor;
  final String buttonText;
  final Function()? onTap;
  final bool containsIcon;
  final String? icon;
  final double fontSize;
  final double? height;
  final double? width;
  final double? padding;
  final String? fontFamily;
  final Color? upperGradientColor;
  final Color? lowerGradientColor;
  final double? borderRadius;
  final bool withBorderOnly;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 50.h,
        padding: EdgeInsets.symmetric(horizontal: padding ?? 16.w),
        decoration: withBorderOnly
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
                border: Border.all(color: AppColors.PRIMARY_COLOR),
              )
            : BoxDecoration(
                color: AppColors.PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
              ),
        child: containsIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10.w),
                  Text(
                    buttonText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize.sp,
                      fontFamily: fontFamily,
                    ),
                  )
                ],
              )
            : Center(
                child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: fontSize.sp,
                    fontFamily: fontFamily ?? 'Inter'),
              )),
      ),
    );
  }
}
