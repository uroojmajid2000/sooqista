import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class EmptyDataFound extends StatelessWidget {
  final String imageIcon;
  final String name;
  final String detail;
  final String tryNew;
  const EmptyDataFound({
    super.key,
    required this.imageIcon,
    required this.name,
    required this.detail,
    required this.tryNew,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
              // AssetPaths.FAVICON_IMAGES
              imageIcon),
          SizedBox(
            height: 15.h,
          ),
          Text(
            // 'Empty WishList',
            name,
            style: TextStyle(
              color: AppColors.PRIMARY_COLOR,
              fontSize: 30.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            //
            detail,
            style: TextStyle(
              color: AppColors.HINT_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            // 'Start purchase some products...',
            tryNew,
            style: TextStyle(
              color: AppColors.HINT_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 200.h,
          )
        ],
      ),
    );
  }
}



// const EmptyDataFound(
      //   imageIcon: AssetPaths.EMPTY_FAVICON_IMAGES,
      //   name: 'Empty WishList',
      //   detail: 'There are nothing in the wishlist yet.',
      //   tryNew: 'Start purchase some products...',
      // ),

      //     const EmptyDataFound(
      //   imageIcon: AssetPaths.EMPTYCART_IMAGES,
      //   name: 'Empty Cart',
      //   detail: 'There are nothing in the cart yet.',
      //   tryNew: 'Start purchase some products...',
      // ),

      //     const EmptyDataFound(
      //   imageIcon: AssetPaths.EMPTYORDERS_IMAGES,
      //   name: 'No Orders',
      //   detail: 'There are no order history yet.',
      //   tryNew: 'Start purchase some products...',
      // ),