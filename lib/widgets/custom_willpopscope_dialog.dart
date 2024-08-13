import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class ExitButtonContent extends StatelessWidget {
  ExitButtonContent({
    super.key,
    this.descriptionText,
    this.onTapYesButton,
  });

  String? descriptionText;
  Function()? onTapYesButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.TRANSPARENT_COLOR,
          borderRadius: BorderRadius.circular(5.sp)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("descriptionn"),
            Text(
              'Are You Sure You want to close?',
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 14.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w400,
              ),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomButton(
                    height: 35.h,
                    buttonColor: AppColors.PRIMARY_COLOR,
                    onTap: onTapYesButton,
                    buttonText: "Yes",
                  ),
                ),
                7.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    height: 35.h,
                    buttonColor: AppColors.PRIMARY_COLOR,
                    onTap: () {
                      AppNavigation.navigatorPop(context);
                    },
                    buttonText: "No",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
