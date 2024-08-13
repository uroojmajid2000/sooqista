import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/search_textfield.dart';

AppBar customAppBarwithTitle({
  required Function() onTapDrawer,
  required Function() onTapFavorite,
  required Function() onTapWorld,
  required String text,

  // TextEditingController? searchController,
  Function()? onSearchSubmitted,
  required Function(String) onLanguageChange,
}) {
  return AppBar(
    toolbarHeight: 65.0,
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.WHITE_COLOR,
    elevation: 0,
    leading: GestureDetector(
        onTap: onTapDrawer,
        child: Icon(
          Icons.menu,
          color: AppColors.BLACK_COLOR,
          size: 24.w,
        )
        // Image.asset(
        //   AssetPaths.MENU_ICON_APPBAR,
        //   color: AppColors.BLACK_COLOR,
        //   width: 20.w,
        //   height: 20.h,
        // )

        ),
    title: Text(
      // 'Customer Details',
      text,
      style: TextStyle(
        color: AppColors.BLACK_COLOR,
        fontSize: 16.sp,
        fontFamily: AppFonts.interSemiBold,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
    actions: [
      GestureDetector(
          onTap: onTapFavorite,
          child: Image.asset(
            AssetPaths.HWISH_ICON_APPBAR,
            color: AppColors.BLACK_COLOR,
            width: 24.w,
            height: 24.h,
          )),
      PopupMenuButton<String>(
        position: PopupMenuPosition.under,
        color: AppColors.WHITE_COLOR,
        onSelected: onLanguageChange,
        icon: Image.asset(
          AssetPaths.GLOBE_ICON_SEARCHBAR,
          color: AppColors.BLACK_COLOR,
          width: 20.w,
          height: 20.h,
        ),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'en',
            child: Text(
              'English',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          PopupMenuItem(
            value: 'ar',
            child: Text(
              'Arabic',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

AppBar customAppBarwithSearchTextfield({
  required Function() onTapDrawer,
  required Function() onTapFavorite,
  required Function() onTapWorld,
  TextEditingController? searchController,
  Function()? onSearchSubmitted,
  required Function(String) onLanguageChange,
}) {
  return AppBar(
    toolbarHeight: 65.0,
    automaticallyImplyLeading: false,
    // backgroundColor: AppColors.BLUE_COLOR,
    backgroundColor: AppColors.WHITE_COLOR,
    elevation: 0,
    leading: GestureDetector(
        onTap: onTapDrawer,
        child: Icon(
          Icons.menu,
          color: AppColors.BLACK_COLOR,
          size: 24.w,
        )

        //  Image.asset(
        //   AssetPaths.MENU_ICON_APPBAR2,
        //   color: AppColors.BLACK_COLOR,
        //   width: 10.w,
        //   height: 10.h,
        // )

        ),
    title: searchTextField(
      searchController: searchController,
      onSearchSubmitted: onSearchSubmitted,
    ),
    centerTitle: true,
    actions: [
      GestureDetector(
          onTap: onTapFavorite,
          child: Image.asset(
            AssetPaths.HWISH_ICON_APPBAR,
            color: AppColors.BLACK_COLOR,
            width: 24.w,
            height: 24.h,
          )),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: GestureDetector(
      //       onTap: onTapWorld,
      //       child: Image.asset(
      //         AssetPaths.GLOBE_ICON_SEARCHBAR,
      //         color: AppColors.BLACK_COLOR,
      //         width: 20.w,
      //         height: 20.h,
      //       )),
      // ),

      PopupMenuButton<String>(
        position: PopupMenuPosition.under,
        color: AppColors.WHITE_COLOR,
        onSelected: onLanguageChange,
        icon: Image.asset(
          AssetPaths.GLOBE_ICON_SEARCHBAR,
          color: AppColors.BLACK_COLOR,
          width: 20.w,
          height: 20.h,
        ),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'en',
            child: Text(
              'English',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          PopupMenuItem(
            value: 'ar',
            child: Text(
              'Arabic',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
