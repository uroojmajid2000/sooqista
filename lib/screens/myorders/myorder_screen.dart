import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/myorders/orderlist_container.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class MyorderScreen extends StatefulWidget {
  const MyorderScreen({super.key});

  @override
  State<MyorderScreen> createState() => _MyorderScreenState();
}

class _MyorderScreenState extends State<MyorderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: AppColors.WHITE_COLOR,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Order History',
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
                        status: "Processing",
                        statusColor: AppColors.PROCESSINGCOLOR,
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
                        status: "Delivered",
                        statusColor: AppColors.DELIVEREDCOLOR,
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


      //     const EmptyDataFound(
      //   imageIcon: AssetPaths.EMPTYORDERS_IMAGES,
      //   name: 'No Orders',
      //   detail: 'There are no order history yet.',
      //   tryNew: 'Start purchase some products...',
      // ),