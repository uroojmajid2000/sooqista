import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/productdetail/controller/propertydetails_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class QuantityIncreaseProductContainer extends StatelessWidget {
  const QuantityIncreaseProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final PropertyDetailController controller =
        Get.find<PropertyDetailController>();

    return Container(
      width: 60.w,
      height: 25.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.CONTAINER_COLOR),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: controller.decreaseQuantity,
            child: Container(
              width: 20.w,
              height: 22.h,
              decoration: ShapeDecoration(
                color: AppColors.CONTAINER_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Center(
                child: Text(
                  '-',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Obx(
                () => Text(
                  '${controller.quantity.value}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: controller.increaseQuantity,
            child: Container(
              width: 20.w,
              height: 22.h,
              decoration: ShapeDecoration(
                color: AppColors.CONTAINER_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 12.sp,
                    fontFamily: AppFonts.interRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
