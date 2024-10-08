import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class OrderlistContainer extends StatelessWidget {
  final String image;
  final String name;
  final String detail;
  final String price;
  final String status;
  final Color statusColor;
  const OrderlistContainer({
    super.key,
    required this.image,
    required this.name,
    required this.detail,
    required this.price,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'July 10, 2024',
          style: TextStyle(
            color: AppColors.TEXT_COLOR,
            fontSize: 14.sp,
            fontFamily: AppFonts.interRegular,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order ID : mTpnFzFNtA8TMrfDn',
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              // 'Processing',
              status,
              style: TextStyle(
                color:

                    //  AppColors.PROCESSINGCOLOR,

                    statusColor,
                fontSize: 14.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(
          height: 6.h,
        ),
        Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 113.w,
                  height: 96.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        // AssetPaths.FROK_IMAGE
                        image,
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          // 'Floral Printed Shirt',
                          name,

                          style: TextStyle(
                            color: AppColors.TEXT_COLOR,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.interRegular,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Image.asset(AssetPaths.DELETEICON_IMAGES,
                        //     width: 20.w, height: 20.h)
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Floral Printed Shirt',
                          detail,

                          style: TextStyle(
                            color: AppColors.TEXT_COLOR,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.interRegular,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //   // '\$15.00',
                        //   price,
                        //   style: TextStyle(
                        //     color: AppColors.BLACK_COLOR,
                        //     fontSize: 14.sp,
                        //     fontFamily: AppFonts.interSemiBold,
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),

                        Text(
                          price,
                          style: TextStyle(
                            color: AppColors.TEXT_COLOR,
                            fontSize: 14.sp,
                            fontFamily: AppFonts.interRegular,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppNavigation.navigateTo(
                                context, AppRouteName.ORDERDETAILS_HISTORY);
                          },
                          child: Text(
                            'View Details',
                            style: TextStyle(
                              color: AppColors.TERMS_AND_CONDITION,
                              fontSize: 12.sp,
                              fontFamily: AppFonts.interMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 360,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: AppColors.DIVIDER_LINE),
            ),
          ),
        )
      ],
    );
  }
}
