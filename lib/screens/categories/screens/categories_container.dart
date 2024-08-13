import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class CategoriesContainer extends StatelessWidget {
  final String image;
  final String name;
  const CategoriesContainer({
    super.key, required this.image, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                // AssetPaths.TSHIRT_IMAGE_CIRCULAR
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          // 'T-Shirts',
          name,
          style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 12.sp,
              fontFamily: AppFonts.interSemiBold,
                      fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
