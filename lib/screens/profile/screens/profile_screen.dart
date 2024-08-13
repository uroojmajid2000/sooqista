import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(AssetPaths.DOLL_IMAGE),
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            // Text(
            //   'Change Image',
            //   style: TextStyle(
            //     color: AppColors.TERMS_AND_CONDITION,
            //     fontSize: 12.sp,
            //     fontFamily: AppFonts.interMedium,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'QuratulAin Annie',
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Image.asset(
            //       AssetPaths.EDIT_ICON,
            //       width: 22.w,
            //       height: 22.h,
            //     )
            //   ],
            // ),

            Container(
              width: double.infinity,
              // height: 208,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1,
                      // strokeAlign: BorderSide.strokeAlignOutside,
                      color: AppColors.DIVIDER_LINE),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        color: AppColors.BLACK_COLOR,
                        fontSize: 16.sp,
                        fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'QuratulAin Annie',
                      style: TextStyle(
                        color: AppColors.TEXT_COLOR,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.interRegular,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    //------------------------------------------------

                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        color: AppColors.BLACK_COLOR,
                        fontSize: 16.sp,
                        fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'abcd123@gmail.com',
                      style: TextStyle(
                        color: AppColors.TEXT_COLOR,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.interRegular,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    //------------------------------------------------

                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: AppColors.BLACK_COLOR,
                        fontSize: 16.sp,
                        fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '+926334567890',
                      style: TextStyle(
                        color: AppColors.TEXT_COLOR,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.interRegular,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
