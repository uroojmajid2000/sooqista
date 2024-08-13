import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/myorders/orderlist_container.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class Cancelationhistory extends StatefulWidget {
  const Cancelationhistory({super.key});

  @override
  State<Cancelationhistory> createState() => _CancelationhistoryState();
}

class _CancelationhistoryState extends State<Cancelationhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Your Cancellations',
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                //processing

                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: OrderlistContainer(
                        image: AssetPaths.FROK_IMAGE,
                        name: 'Kids Frock',
                        detail: 'Floral Printed Shirt',
                        price: 'Quantity 02 | \$30.00',
                        status: "Canceled",
                        statusColor: AppColors.CANCELLEDCOLOR,
                      ),
                    );
                  },
                ),

//Delivered

                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: OrderlistContainer(
                        image: AssetPaths.FROK_IMAGE,
                        name: 'Kids Frock',
                        detail: 'Floral Printed Shirt',
                        price: 'Quantity 02 | \$30.00',
                        status: "Canceled",
                        statusColor: AppColors.CANCELLEDCOLOR,
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