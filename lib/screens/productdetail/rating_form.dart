import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/productdetail/custom_textfield.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class RateNowForm extends StatefulWidget {
  const RateNowForm({super.key, required this.propertyId});
  final String propertyId;

  @override
  _RateNowFormState createState() => _RateNowFormState();
}

class _RateNowFormState extends State<RateNowForm> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.WHITE_COLOR,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            'How would you rate this item?',
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
              onTap: () {
                // controller.rating.value = 0.0;
                Get.back();
              },
              child: Image.asset(AssetPaths.CANCEL_ICON)),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SizedBox(height: 5.h),
          Text(
            'Rating',
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.h),
          RatingBar.builder(
            initialRating: 3,
            unratedColor: AppColors.RATING_HINT_COLOR,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 25,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppColors.RATING_COLOR,
            ),
            onRatingUpdate: (newRating) {
              // controller.rating.value = newRating;
              // logData(message: 'Rating ${controller.rating.value}');
              // setState(() {
              //   rating = newRating;
              // });
            },
          ),
          SizedBox(height: 10.h),
          CustomTextFieldDescription(
            lines: 3,
            maxLength: 100,
            fontsize: 12.sp,
            // controller: controller.controller,
            hint: 'Write a review',
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
                height: 35.h,
                buttonColor: AppColors.PRIMARY_COLOR,
                onTap: () {
                  Navigator.of(context).pop();
                },
                buttonText: "Submit"),
          )
        ],
      ),
    );
  }
}
