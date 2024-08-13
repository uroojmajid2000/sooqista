import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class CollectionWidget extends StatelessWidget {
  final Color containerColor;
  final String name;
  final String details;

  const CollectionWidget({
    super.key,
    required this.containerColor,
    required this.name,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(color: containerColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // 'KIDS',
              name,
              style: TextStyle(
                  color: AppColors.WHITE_COLOR,
                  fontSize: 16.sp,
                  fontFamily: AppFonts.interSemiBold,
                          fontWeight: FontWeight.w600,
                          ),
            ),
            Row(
              children: [
                Text(
                  // 'VIEW COLLECTIONS',
                  details,
                  style: TextStyle(
                      color: AppColors.WHITE_COLOR,
                      fontSize: 10.sp,
                      fontFamily: AppFonts.interMedium,
                      
                        fontWeight: FontWeight.w500,),
                        
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(AssetPaths.ARROW)
              ],
            )
          ],
        ),
      ),
    );
  }
}
