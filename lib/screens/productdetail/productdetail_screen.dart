import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/cart/screens/quantityincrease_container.dart';
import 'package:sooqista_app/screens/productdetail/controller/propertydetails_controller.dart';
import 'package:sooqista_app/screens/productdetail/quantityincrease_product_container.dart';
import 'package:sooqista_app/screens/productdetail/rating_form.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final PropertyDetailController controller =
      Get.put(PropertyDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: AppColors.BLACK_COLOR)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    AssetPaths.HWISH_ICON_APPBAR,
                    color: AppColors.BLACK_COLOR,
                    width: 24.w,
                    height: 24.h,
                  )),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                slider(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
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
                          itemBuilder: (context, _) => const Icon(Icons.star,
                              color: AppColors.RATING_COLOR),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '(12 Reviews)',
                          style: TextStyle(
                            color: AppColors.REVIEW_TEXT_COLOR,
                            fontSize: 10.sp,
                            fontFamily: AppFonts.interRegular,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    QuantityIncreaseProductContainer()
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Cotton Printed T-shirt',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 121, 110, 110),
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Floral Printed Shirt',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '\$20.00',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 400.w,
                  child: Text(
                    'Srt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comsodo consequatquis nostrud exercitation ullamco laboris.',
                    style: TextStyle(
                      color: AppColors.TEXT_COLOR,
                      fontSize: 12.sp,
                      fontFamily: AppFonts.interRegular,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '* Enim ad minim veniam quis nostrud exercitation ',
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
                  '* Veniam quis nostrud',
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
                  '* Nostrud exercitation ullamco',
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Select Size',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interMedium,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizeContainer(
                      text: "XS",
                    ),
                    SizedBox(width: 10.w),
                    SizeContainer(
                      text: "S",
                    ),
                    SizedBox(width: 10.w),
                    SizeContainer(
                      text: "M",
                    ),
                    SizedBox(width: 10.w),
                    SizeContainer(
                      text: "L",
                    ),
                    SizedBox(width: 10.w),
                    SizeContainer(
                      text: "XL",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rating & Reviews',
                      style: TextStyle(
                        color: AppColors.BLACK_COLOR,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return RateNowForm(
                              propertyId: "123",
                            );
                          },
                        );
                      },
                      child: Text(
                        'Write a review',
                        style: TextStyle(
                          color: AppColors.TERMS_AND_CONDITION,
                          fontSize: 12.sp,
                          fontFamily: AppFonts.interMedium,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ReviewContainer(),
                      );
                    }),
                SizedBox(
                  height: 20.h,
                ),
                // CustomButton(
                //   buttonColor: AppColors.BLACK_COLOR,
                //   buttonText: "Continue",
                //   onTap: () {
                //     // AppNavigation.navigatorPop(context);
                //     // AppNavigation.navigateTo(
                //     //     context, AppRouteName.WELCOME_SCREEN_ROUTE);

                //     AppNavigation.navigateTo(
                //       context,
                //       AppRouteName.ORDERDETAILS_ROUTE,
                //     );
                //   },
                // ),

                GestureDetector(
                  onTap: () {},
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

                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }

  Row slider_dots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            controller.sliders.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    child: Obx(
                      () => Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == controller.currentSliderIndex.value
                              ? AppColors.PRIMARY_COLOR
                              : AppColors.WHITE_COLOR,
                        ),
                      ),
                    ),
                  ),
                )),
      ],
    );
  }

  Stack slider() {
    return Stack(
      children: [
        SizedBox(
          height: 250.h,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: controller.sliders.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: double.infinity,
                height: 250.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: controller.sliders[index],
                    ),
                  ),
                ),

                //  controller.sliders[index],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              onPageChanged: (index, reason) {
                controller.currentSliderIndex.value = index;
              },
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Positioned(
            top: 30,
            right: 30,
            // left: 0,
            child: Image.asset(
              AssetPaths.HWISH_ICON_APPBAR,
              color: AppColors.WHITE_COLOR,
              width: 25.w,
              height: 25.h,
            )),
        Positioned(bottom: 30, right: 0, left: 0, child: slider_dots()),
      ],
    );
  }
}

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: AppColors.DIVIDER_LINE,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'QuratulAin',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interMedium,
                    fontWeight: FontWeight.w500,
                  ),
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
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'July 18, 2024',
              style: TextStyle(
                color: AppColors.REVIEW_TEXT_COLOR,
                fontSize: 12.sp,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 254.w,
              child: Text(
                'It’s a very good T-Shirt. The stuff is very soft and I’m just love it. Worth buying',
                style: TextStyle(
                  color: AppColors.TEXT_COLOR,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.interRegular,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  final String text;

  const SizeContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PropertyDetailController controller =
        Get.put(PropertyDetailController());

    return Obx(() {
      final isSelected = controller.selectedSize.value == text;
      return GestureDetector(
        onTap: () => controller.selectSize(text),
        child: Container(
          width: 25.w,
          height: 25.h,
          decoration: ShapeDecoration(
            color: isSelected
                ? AppColors.PRIMARY_COLOR_HOME
                : AppColors.CONTAINER_COLOR,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.REVIEW_TEXT_COLOR,
                fontSize: 10.sp,
                fontFamily: AppFonts.interMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    });
  }
}
