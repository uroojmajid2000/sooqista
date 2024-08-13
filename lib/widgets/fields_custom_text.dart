import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class FieldsCustomText extends StatelessWidget {
  final String text;
  const FieldsCustomText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.BLACK_COLOR,
        fontSize: 16.sp,
        fontFamily: AppFonts.interMedium,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
