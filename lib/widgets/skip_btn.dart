import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';

class SkipButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SkipButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 21.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.w,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: AppColors.BLUE_COLOR_OUTLINE,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                text,
                style: TextStyle(
                  color: AppColors.BLUE_COLOR,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ));
  }
}
