import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class SelectableButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: isSelected
                  ? AppColors.PRIMARY_COLOR
                  : AppColors.PRIMARY_COLOR,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          color: isSelected ? AppColors.PRIMARY_COLOR : Colors.transparent,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: Text(
              text,
              style: TextStyle(
                color: isSelected
                    ? AppColors.WHITE_COLOR
                    : AppColors.PRIMARY_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interSemiBold,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
