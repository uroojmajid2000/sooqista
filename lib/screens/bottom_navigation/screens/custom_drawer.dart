import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/bottom_navigation/controllers/bottom_navigation_controller.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class CustomDrawer extends StatelessWidget {
  var controller = Get.put(BottomNavgationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: AppColors.WHITE_COLOR,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 220.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetPaths.DRAWER_TOP,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 35, left: 20, right: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AssetPaths.DOLL_IMAGE),
                    ),
                    10.horizontalSpace,
                    Text(
                      'QuratulAin Annie',
                      style: TextStyle(
                        color: AppColors.WHITE_COLOR,
                        fontSize: 14.sp,
                        fontFamily: AppFonts.interMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListileNavbar(
              imagePath: AssetPaths.HOME_ICON_DRAWER,
              name: "Home",
              onTap: () {
                Navigator.pop(context);
                controller.changePage(0);
                AppNavigation.navigateTo(
                    context, AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE);
              },
            ),
            ListileNavbar(
              imagePath: AssetPaths.PRODUCT_ICON_DRAWER,
              name: "All Products",
              onTap: () {
                Navigator.pop(context);
                controller.changePage(1);
                AppNavigation.navigateTo(
                    context, AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE);
              },
            ),
            ExpenstionTileWidget(
              imagePath: AssetPaths.CATEGORY_ICON_DRAWER,
              name: "Categories",
              categoryname1: 'Mens',
              categoryname2: 'Womens',
              categoryname3: 'Kids',
              categoryname4: 'Accessories',
              onTapCategory1: () {},
              onTapCategory2: () {},
              onTapCategory3: () {},
              onTapCategory4: () {},
            ),
            ListileNavbar(
              imagePath: AssetPaths.CART_ICON_DRAWER,
              name: "Cart",
              onTap: () {
                Navigator.pop(context);
                controller.changePage(2);
                AppNavigation.navigateTo(
                    context, AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE);
              },
            ),
            ListileNavbar(
              imagePath: AssetPaths.WISHLIST_ICON_DRAWER,
              name: "WishList",
              onTap: () {
                Navigator.pop(context);
                AppNavigation.navigateTo(
                    context, AppRouteName.WISHLIST_SCREEN_ROUTE);
              },
            ),
            ExpenstionTileWidget(
              imagePath: AssetPaths.MANAGEACC_ICON_DRAWER,
              name: "Manage Account",
              categoryname1: 'My Profile',
              categoryname2: 'Address Book',
              onTapCategory1: () {
                AppNavigation.navigateTo(
                    context, AppRouteName.EDIT_PROFILE_SCREENROUTE);
              },
              onTapCategory2: () {
                AppNavigation.navigateTo(
                    context, AppRouteName.ADDRESSBOOK_SCREEN_ROUTE);
              },
            ),
            ExpenstionTileWidget(
              imagePath: AssetPaths.MYORDERS_ICON_DRAWER,
              name: "My Orders",
              categoryname1: 'Order History',
              onTapCategory1: () {
                AppNavigation.navigateTo(
                    context, AppRouteName.MYORDERSCREEN_ROUTE);
              },
              categoryname2: 'My Cancellations',
              onTapCategory2: () {
                AppNavigation.navigateTo(
                    context, AppRouteName.CANCELATION_ORDERSCREEN_ROUTE);
              },
            ),
            ExpenstionTileWidget(
              imagePath: AssetPaths.SETTING_ICON_DRAWER,
              name: "Settings",
              categoryname1: 'Help Center',
              onTapCategory1: () {},
              categoryname2: 'Privacy Policy',
              onTapCategory2: () {},
            ),
            ListileNavbar(
              imagePath: AssetPaths.LOGOUT_ICON_DRAWER,
              name: "Log Out",
              onTap: () {
                Navigator.pop(context);
                AppNavigation.navigateTo(context, AppRouteName.LOGIN_SCREEN);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExpenstionTileWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String categoryname1;
  final VoidCallback onTapCategory1;
  final String categoryname2;
  final VoidCallback onTapCategory2;
  final String? categoryname3;
  final VoidCallback? onTapCategory3;
  final String? categoryname4;
  final VoidCallback? onTapCategory4;

  const ExpenstionTileWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.categoryname1,
    required this.onTapCategory1,
    required this.categoryname2,
    required this.onTapCategory2,
    this.categoryname3,
    this.onTapCategory3,
    this.categoryname4,
    this.onTapCategory4,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ExpansionTile(
          iconColor: AppColors.BLACK_COLOR,
          // collapsedTextColor: AppColors.PRIMARY_COLOR,
          // textColor: AppColors.PRIMARY_COLOR,
          // collapsedBackgroundColor: AppColors.PRIMARY_COLOR,

          collapsedIconColor: AppColors.BLACK_COLOR,
          leading: Image.asset(
            imagePath,
            width: 20.w,
            height: 20.h,
          ),
          title: Text(
            name,
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
          children: <Widget>[
            ListTile(
              leading: SizedBox(),
              title: Text(
                categoryname1,
                style: TextStyle(
                  color: AppColors.TEXT_COLOR,
                  fontSize: 14.sp,
                  fontFamily: AppFonts.inikaRegular,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: onTapCategory1,
            ),
            ListTile(
              leading: SizedBox(),
              title: Text(
                categoryname2,
                style: TextStyle(
                  color: AppColors.TEXT_COLOR,
                  fontSize: 14.sp,
                  fontFamily: AppFonts.inikaRegular,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: onTapCategory2,
            ),
            if (categoryname3 != null &&
                onTapCategory3 != null) // Conditionally render
              ListTile(
                leading: SizedBox(),
                title: Text(
                  categoryname3!,
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.inikaRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onTap: onTapCategory3,
              ),
            if (categoryname4 != null &&
                onTapCategory4 != null) // Conditionally render
              ListTile(
                leading: SizedBox(),
                title: Text(
                  categoryname4!,
                  style: TextStyle(
                    color: AppColors.TEXT_COLOR,
                    fontSize: 14.sp,
                    fontFamily: AppFonts.inikaRegular,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onTap: onTapCategory4,
              ),
          ],
        ),
      ),
    );
  }
}

class ListileNavbar extends StatelessWidget {
  final String imagePath;
  final String name;
  final VoidCallback onTap;
  const ListileNavbar({
    super.key,
    required this.imagePath,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
          leading: Image.asset(
            // AssetPaths.HOME_ICON_DRAWER,
            imagePath,
            width: 20.w,
            height: 20.h,
          ),
          title: Text(
            // 'Home',
            name,
            style: TextStyle(
              color: AppColors.BLACK_COLOR,
              fontSize: 14.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
          onTap: onTap),
    );
  }
}
