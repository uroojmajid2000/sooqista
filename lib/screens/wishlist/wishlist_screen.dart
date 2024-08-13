import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/wishlist/wishlist_container.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_nofound_data.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Your WishList',
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
              children: [
                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: WishlistProductContainer(
                        image: AssetPaths.FROK_IMAGE,
                        name: 'Cotton Shirt',
                        detail: 'Floral Printed Shirt',
                        price: '\$15.00',
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 100.h,
                ),
                Text(
                  'No More Items',
                  style: TextStyle(
                    color: AppColors.HINT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}



 // const EmptyDataFound(
            //   imageIcon: AssetPaths.EMPTY_FAVICON_IMAGES,
            //   name: 'Empty WishList',
            //   detail: 'There are nothing in the wishlist yet.',
            //   tryNew: 'Start purchase some products...',
            // ),