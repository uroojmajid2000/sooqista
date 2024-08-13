import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/categories/screens/categories_container.dart';
import 'package:sooqista_app/screens/categories/screens/product_container.dart';
import 'package:sooqista_app/screens/categories/screens/selectable_chips.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  final List<String> items = [
    'Name(A-Z)',
    'Name(Z-A)',
    'Price(Low to High)',
    'Price(High to Low)',
  ];
  String? selectedValue;
  String selectedCategory = 'T-Shirts';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Collection',
                  style: TextStyle(
                    color: AppColors.BLACK_COLOR,
                    fontSize: 16.sp,
                    fontFamily: AppFonts.interSemiBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Sort By :',
                      style: TextStyle(
                        color: AppColors.TEXT_COLOR,
                        fontSize: 12.sp,
                        fontFamily: AppFonts.interSemiBold,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    // Text(
                    //   'dropdown',
                    //   style: TextStyle(
                    //     color: AppColors.TEXT_COLOR,
                    //     fontSize: 12.sp,
                    //     fontFamily: AppFonts.interSemiBold,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),

                    Container(
                      height: 30.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1, color: AppColors.DIVIDER_LINE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'Select',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.TEXT_COLOR,
                            ),
                          ),
                          items: items
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            height: 30.h,
                            width: 120,
                          ),
                          menuItemStyleData: MenuItemStyleData(
                            height: 45.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(AssetPaths.FILTER_ICONS))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            // SizedBox(
            //   height: 100.h,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 8,
            //     itemBuilder: (context, index) {
            //       return Row(
            //         children: [
            //           CategoriesContainer(
            //             image: AssetPaths.TSHIRT_IMAGE_CIRCULAR,
            //             name: 'T-Shirts',
            //           ),
            //           SizedBox(
            //             width: 33.w,
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableButton(
                  text: 'T-Shirts',
                  isSelected: selectedCategory == 'T-Shirts',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'T-Shirts';
                    });
                  },
                ),
                SelectableButton(
                  text: 'Jeans',
                  isSelected: selectedCategory == 'Jeans',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Jeans';
                    });
                  },
                ),
                SelectableButton(
                  text: 'Shoes',
                  isSelected: selectedCategory == 'Shoes',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Shoes';
                    });
                  },
                ),
                SelectableButton(
                  text: 'Jackets',
                  isSelected: selectedCategory == 'Jackets',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Jackets';
                    });
                  },
                ),
              ],
            ),

            SizedBox(
              height: 25.h,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25.w,
                mainAxisSpacing: 30.h,
                childAspectRatio: 0.6,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return ProductContainer(
                  name: 'Cotton Shirt',
                  details: 'Floral Printed Shirt',
                  price: '\$17.00',
                  image: AssetPaths.TSHIRT_IMAGE,
                  onTap: () {},
                  detailsTap: () {
                    AppNavigation.navigateTo(
                      context,
                      AppRouteName.PRODUCT_DETAIL_SCREEN_ROUTE,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
