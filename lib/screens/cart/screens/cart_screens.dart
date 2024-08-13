import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/screens/cart/screens/cart_container.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class CartScreens extends StatefulWidget {
  const CartScreens({super.key});

  @override
  State<CartScreens> createState() => _CartScreensState();
}

class _CartScreensState extends State<CartScreens> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const CartListProductContainer(
                    image: AssetPaths.FROK_IMAGE,
                    name: 'Cotton Shirt',
                    detail: 'Floral Printed Shirt',
                    price: '\$15.00',
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$57.00',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$05.00',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$00.00',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: AppColors.DIVIDER_LINE),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$62.00',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomButton(
                buttonColor: AppColors.PRIMARY_COLOR,
                onTap: () {
                  AppNavigation.navigateTo(
                    context,
                    AppRouteName.CUSTOMERDETAILS_SCREEN_ROUTE,
                  );
                },
                buttonText: "Proceed to Checkout"),
            SizedBox(
              height: 15.h,
            ),
            CustomButton(
                buttonColor: AppColors.PRIMARY_COLOR,
                textColor: AppColors.PRIMARY_COLOR,
                onTap: () {},
                buttonText: "Continue Shopping",
                withBorderOnly: true),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}


      //     const EmptyDataFound(
      //   imageIcon: AssetPaths.EMPTYCART_IMAGES,
      //   name: 'Empty Cart',
      //   detail: 'There are nothing in the cart yet.',
      //   tryNew: 'Start purchase some products...',
      // ),