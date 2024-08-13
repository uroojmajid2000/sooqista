import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductContainer extends StatelessWidget {
  final String name;
  final String details;
  final String price;
  final String image;
  final VoidCallback onTap;
  final VoidCallback detailsTap;
  const ProductContainer({
    super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.image,
    required this.onTap,
    required this.detailsTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: detailsTap,
      child: Container(
        width: 168.w,
        child: Column(
          children: [
            Container(
              width: 168.w,
              height: 140.h,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(

                      // AssetPaths.TSHIRT_IMAGE
                      image),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Image.asset(
                        AssetPaths.HWISH_ICON_APPBAR,
                        color: AppColors.WHITE_COLOR,
                        width: 24.w,
                        height: 24.h,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            RatingBar.builder(
              initialRating: 3,
              unratedColor: AppColors.RATING_HINT_COLOR,
              direction: Axis.horizontal,
              allowHalfRating: true,
              tapOnlyMode: true,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 15,
              // itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: AppColors.RATING_COLOR),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              name,
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interSemiBold,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              details,
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              price,
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interSemiBold,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: double.infinity,
                  height: 30.h,
                  decoration: ShapeDecoration(
                    color: AppColors.PRIMARY_COLOR,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetPaths.CART_ICON_BOTTOM_NAVIGAITON,
                        color: AppColors.WHITE_COLOR,
                        width: 20.w,
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Add To Cart',
                        style: TextStyle(
                          color: AppColors.WHITE_COLOR,
                          fontSize: 10.sp,
                          fontFamily: AppFonts.interSemiBold,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
