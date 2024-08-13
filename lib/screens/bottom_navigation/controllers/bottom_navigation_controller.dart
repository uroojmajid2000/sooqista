import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/cart/screens/cart_screens.dart';
import 'package:sooqista_app/screens/categories/screens/categories_screen.dart';
import 'package:sooqista_app/screens/home/screens/home_screen.dart';
import 'package:sooqista_app/screens/profile/screens/profile_screen.dart';
import 'package:sooqista_app/services/app_logger.dart';
import 'package:sooqista_app/utills/app_strings.dart';

class BottomNavgationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  RxString appbar_name = "".obs;

  void changePage(int index) {
    logData(message: "Index: $index");
    selectedIndex.value = index;
    if (selectedIndex.value == 1) {
      appbar_name.value = "Categories";
    } else if (selectedIndex.value == 2) {
      appbar_name.value = "Cart";
    } else if (selectedIndex.value == 3) {
      appbar_name.value = "Profile";
    }
    update();
  }

  final List pagesForBusiness = [
    HomeScreen(),
    CategoryScreen(),
    CartScreens(),
    ProfileScreen(),
  ];
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // // ! ============> Open Drawer
  // void openDrawer() {
  //   scaffoldKey.currentState?.openDrawer();
  // }

  @override
  void onClose() {
    super.onClose();
  }

  //! ============> Switch Case
  String getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return AppStrings.HOME_NAV_BAR_ITEM;
      case 1:
        return AppStrings.CATEGORY_NAV_BAR_ITEM;
      case 2:
        return AppStrings.CART_NAV_BAR_ITEM;
      case 3:
        return AppStrings.PROFILE_NAV_BAR_ITEM;
      default:
        return '';
    }
  }
}
