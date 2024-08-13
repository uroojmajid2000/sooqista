import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/screens/home/screens/collection_widget.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 425.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.KIDS_COLLECTION),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 110.h,
                        ),
                        CollectionWidget(
                          containerColor: AppColors.HOME_OPACITY,
                          name: "KIDS",
                          details: "VIEW COLLECTIONS",
                        )
                      ],
                    ),
                  ),
                ),
                20.horizontalSpace,
                Expanded(
                  child: Column(children: [
                    Container(
                      height: 200.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetPaths.MENS_COLLECTION),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 90.h,
                          ),
                          CollectionWidget(
                            containerColor:
                                Colors.black.withOpacity(0.699999988079071),
                            name: "MEN",
                            details: "VIEW COLLECTIONS",
                          )
                        ],
                      ),
                    ),
                    25.verticalSpace,
                    Container(
                      height: 200.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetPaths.WOMENS_COLLECTION),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70.h,
                          ),
                          CollectionWidget(
                            containerColor: AppColors.WOMENCOLLECTION_OPACITY,
                            name: "WOMEN",
                            details: "VIEW COLLECTIONS",
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            20.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.BAGS_COLLECTION),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        CollectionWidget(
                          containerColor:
                              AppColors.ACCESSORIESCollection_OPACITY,
                          name: "ACCESSORIES",
                          details: "VIEW COLLECTIONS",
                        )
                      ],
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
