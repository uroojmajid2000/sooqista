import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/utills/constants.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/custom_textfield.dart';
import 'package:sooqista_app/widgets/fields_custom_text.dart';
import 'package:sooqista_app/utills/field_validator.dart';

class OrderdetailsScreen extends StatefulWidget {
  const OrderdetailsScreen({super.key});

  @override
  State<OrderdetailsScreen> createState() => _OrderdetailsScreenState();
}

class _OrderdetailsScreenState extends State<OrderdetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Order Details',
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              Container(
                width: double.infinity,
                height: Get.height * 0.55,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFFDADADA),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'QuratulAin',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        'abcq2425@gmail.com',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        '+92 34567890',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        'Street# 1, House# 1, New Garden Town, City Lahore,Punjab pakistan , ZipCode : 64350',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      30.verticalSpace,
                      Text(
                        'Total Items : 3',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        'Total Price : \$62.00',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      70.verticalSpace,
                      Text(
                        'Payment Method',
                        style: TextStyle(
                          color: AppColors.BLACK_COLOR,
                          fontSize: 16.sp,
                          fontFamily: AppFonts.interSemiBold,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      40.verticalSpace,
                      Image.asset(AssetPaths.KNETLOGO_IMAGE),
                      10.verticalSpace,
                      Text(
                        'Knet',
                        style: TextStyle(
                          color: AppColors.TEXT_COLOR,
                          fontSize: 14.sp,
                          fontFamily: AppFonts.interSemiBold,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                buttonColor: AppColors.BLACK_COLOR,
                buttonText: "Continue to Payment",
                onTap: () {
                  // AppNavigation.navigatorPop(context);
                  // AppNavigation.navigateTo(
                  //     context, AppRouteName.WELCOME_SCREEN_ROUTE);

                  AppNavigation.navigateTo(
                      context, AppRouteName.PAYMENTDONE_SCREEN);
                },
              ),
              05.verticalSpace,
            ],
          ),
        ));
  }
}
