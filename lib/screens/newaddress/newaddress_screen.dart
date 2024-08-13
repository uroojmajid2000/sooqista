import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class NewaddressScreen extends StatefulWidget {
  const NewaddressScreen({super.key});

  @override
  State<NewaddressScreen> createState() => _NewaddressScreenState();
}

class _NewaddressScreenState extends State<NewaddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'New Address',
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 16.sp,
              fontFamily: AppFonts.interSemiBold,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: AppColors.BLACK_COLOR)),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                    buttonColor: AppColors.PRIMARY_COLOR,
                    onTap: () {},
                    buttonText: "Save Address"),
                10.verticalSpace,
              ],
            ),
          ),
        ));
  }
}

class AddressBookContainer extends StatelessWidget {
  const AddressBookContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            // strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColors.DIVIDER_LINE,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'QuratulAin',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interMedium,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AssetPaths.EDIT_ICON,
                      width: 22.w,
                      height: 22.h,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Image.asset(
                      AssetPaths.DELETEICON_IMAGES,
                      width: 22.w,
                      height: 22.h,
                    )
                  ],
                ),
              ],
            ),
            // 10.horizontalSpace,
            SizedBox(
              height: 8.h,
            ),
            Text(
              'abcq2425@gmail.com',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              '+92 34567890',
              style: TextStyle(
                color: AppColors.TEXT_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              child: Text(
                'Street# 1, House# 1, New Garden Town, City Lahore,Punjab pakistan , ZipCode : 64350',
                style: TextStyle(
                  color: AppColors.TEXT_COLOR,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.interMedium,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),

            Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                    color: AppColors.SHIPPING_CONTAINER,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Billing Address',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: AppColors.SHIPPING_CONTAINER,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Shipping Address',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
