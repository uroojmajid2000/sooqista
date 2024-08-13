import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

Widget searchTextField(
    {TextEditingController? searchController, Function()? onSearchSubmitted}) {
  return Container(
    height: 40.h,
    // color: Colors.amber,
    child: TextField(
      cursorColor: AppColors.PRIMARY_COLOR,
      controller: searchController,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.HINT_COLOR),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.HINT_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.HINT_COLOR),
        ),
        hintText: 'Search Products',
        // labelStyle: TextStyle(
        //     color: AppColors.HINT_COLOR,
        //     fontSize: 14.sp,
        //     fontFamily: AppFonts.interRegular),
        hintStyle: TextStyle(
          color: AppColors.HINT_COLOR,
          fontSize: 16.sp,
          fontFamily: AppFonts.interRegular,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: AppColors.HINT_COLOR,
          size: 20,
        ),

        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
      ),
      onSubmitted: (value) {
        if (onSearchSubmitted != null) {
          onSearchSubmitted();
        }
      },
    ),
  );
}
