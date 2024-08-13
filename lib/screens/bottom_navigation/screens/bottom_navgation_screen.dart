import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/screens/bottom_navigation/controllers/bottom_navigation_controller.dart';
import 'package:sooqista_app/screens/bottom_navigation/screens/custom_drawer.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/app_strings.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_app_bar.dart';
import 'package:sooqista_app/widgets/custom_willpopscope_dialog.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // final AuthSingletonUserRole _authSingletonUserRole = AuthSingletonUserRole();

  var controller = Get.put(BottomNavgationController());
  // var settingController = Get.put(SettingsController());
  // var cartController = Get.put(CartController());
  //  Get.put(CustomBottomNavigationBarController());

 
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // key: g,
      onWillPop: () async {
        return await Get.defaultDialog(
          barrierDismissible: false,
          title: "Exit",
          content: ExitButtonContent(
            onTapYesButton: () {
              SystemNavigator.pop();
            },
          ),
        );
      },
      child: GetBuilder<BottomNavgationController>(builder: (splashController) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColors.WHITE_COLOR,
          resizeToAvoidBottomInset: false,
          drawerEnableOpenDragGesture: true,
          drawerEdgeDragWidth: 0,
          extendBody: false,
          appBar: controller.selectedIndex == 2
              ? customAppBarwithTitle(
                  onTapDrawer: () => scaffoldKey.currentState?.openDrawer(),
                  onTapFavorite: () {
                    AppNavigation.navigateTo(
                        context, AppRouteName.WISHLIST_SCREEN_ROUTE);
                  },
                  onTapWorld: () {},
                  text: "Your Cart",
                  onSearchSubmitted: () {},
                  onLanguageChange: (String language) {
                    // Handle language change here
                    print('Language changed to: $language');
                  },
                )
              : controller.selectedIndex == 3
                  ? customAppBarwithTitle(
                      onTapDrawer: () => scaffoldKey.currentState?.openDrawer(),
                      onTapFavorite: () {
                        AppNavigation.navigateTo(
                            context, AppRouteName.WISHLIST_SCREEN_ROUTE);
                      },
                      onTapWorld: () {},
                      text: "Your Profile",
                      onSearchSubmitted: () {},
                      onLanguageChange: (String language) {
                        // Handle language change here
                        print('Language changed to: $language');
                      },
                    )
                  : customAppBarwithSearchTextfield(
                      onTapDrawer: () => scaffoldKey.currentState?.openDrawer(),
                      onTapFavorite: () {
                        AppNavigation.navigateTo(
                            context, AppRouteName.WISHLIST_SCREEN_ROUTE);
                      },
                      onTapWorld: () {},
                      onSearchSubmitted: () {},
                      onLanguageChange: (String language) {
                        // Handle language change here
                        print('Language changed to: $language');
                      },
                    ),

          body: controller.pagesForBusiness[controller.selectedIndex.value],
          drawer: CustomDrawer(),
          bottomNavigationBar: _customNavigationBarBusiness(),
         

          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          // floatingActionButton:
          //     _authSingletonUserRole.userRole == UserRole.Business
          //         ? floatingActionButton(context: context)
          //         : const SizedBox.shrink(),
        );
      }),
    );
  }

  Widget _customNavigationBarBusiness() {
    return Container(
      height: 75.h,
      decoration: ShapeDecoration(
        color: AppColors.WHITE_COLOR,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColors.PRIMARY_COLOR,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      child: _influencerNavigationItemWidget(),
    );
  }

  Widget _influencerNavigationItemWidget() {
    var controller = Get.put(BottomNavgationController());
    return Row(
      children: [
        Obx(
          () => Expanded(
            child: GestureDetector(
              onTap: () {
                controller.changePage(0);
              },
              child: _bottomNavBarItems(
                iconSelected: AssetPaths.HOME_ICON_BOTTOM_NAVIGAITON_SELECTED,
                iconUnselected: AssetPaths.HOME_ICON_BOTTOM_NAVIGAITON,
                inIndex: 0,
                text: AppStrings.HOME_NAV_BAR_ITEM,
              ),
            ),
          ),
        ),
        Obx(
          () => Expanded(
              child: GestureDetector(
            onTap: () {
              controller.changePage(1);
            },
            child: _bottomNavBarItems(
              iconSelected:
                  AssetPaths.CATEGORIES_ICON_BOTTOM_NAVIGAITON_SELECTED,
              iconUnselected: AssetPaths.CATEGORIES_ICON_BOTTOM_NAVIGAITON,
              inIndex: 1,
              text: AppStrings.CATEGORY_NAV_BAR_ITEM,
            ),
          )),
        ),
        Obx(
          () => Expanded(
            child: GestureDetector(
              onTap: () => controller.changePage(2),
              child: _bottomNavBarItems(
                iconSelected: AssetPaths.CART_ICON_BOTTOM_NAVIGAITON_SELECTED,
                iconUnselected: AssetPaths.CART_ICON_BOTTOM_NAVIGAITON,
                inIndex: 2,
                text: AppStrings.CART_NAV_BAR_ITEM,
              ),
            ),
          ),
        ),
        Obx(
          () => Expanded(
            child: GestureDetector(
              // onTap: () => controller.changePage(3),
              onTap: () {
                controller.changePage(3);
              },
              child: _bottomNavBarItems(
                iconSelected:
                    AssetPaths.PROFILE_ICON_BOTTOM_NAVIGAITON_SELECTED,
                iconUnselected: AssetPaths.PROFILE_ICON_BOTTOM_NAVIGAITON,
                inIndex: 3,
                text: AppStrings.PROFILE_NAV_BAR_ITEM,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavBarItems({
    required int inIndex,
    required String iconSelected,
    required String iconUnselected,
    required String text,
  }) {
    var controller = Get.put(BottomNavgationController());
    return Container(
      color: AppColors.TRANSPARENT_COLOR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            controller.selectedIndex.value == inIndex
                ? iconSelected
                : iconUnselected,
            height: 25.h,
            color: controller.selectedIndex.value == inIndex
                ? AppColors.PRIMARY_COLOR_HOME
                : AppColors.BLACK_COLOR,
          ),
          5.verticalSpace,
          Text(
            text,
            style: TextStyle(
              color: controller.selectedIndex.value == inIndex
                  ? AppColors.PRIMARY_COLOR_HOME
                  : AppColors.BLACK_COLOR,
              fontSize: 12.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  //! ============> Floating Action Button
  // Widget floatingActionButton({required BuildContext context}) {
  //   return GestureDetector(
  //     onTap: () {
  //       var splashController = Get.find<SplashController>();
  //       if (splashController.currentUser.value?.isSubscribed ==
  //               NetworkStrings.USER_SUBSCRIBED ||
  //           splashController.currentUser.value?.isSubscribed == 2 ||
  //           splashController.currentUser.value?.isSubscribed == 3) {
  //         AppNavigation.navigateTo(context, AppRouteName.ADD_NEW_EVENT_SCREEN);
  //       } else {
  //         AppDialogs().showDialogForColumnTwoButtonSecondButtonHasBorder(
  //           context: context,
  //           assetPath: AssetPaths.SUBSCRIPTION_ICON,
  //           contentText: AppStrings.YOU_NEED_TO_PURCHASE,
  //           titleText: "Subscription",
  //           firstButtonText: "Buy",
  //           secondButtonText: "Cancel",
  //           onTapFirstButton: () {
  //             AppNavigation.navigatorPop(context);
  //             AppNavigation.navigateTo(
  //                 context, AppRouteName.SUBSCRIPTION_SCREEN);
  //           },
  //           onTapSecondButton: () {
  //             AppNavigation.navigatorPop(context);
  //           },
  //         );
  //       }
  //     },
  //     child: Container(
  //       margin: EdgeInsets.only(bottom: 16.h),
  //       height: 58.h,
  //       width: 68.w,
  //       decoration: BoxDecoration(
  //         gradient: const LinearGradient(
  //           colors: [
  //             AppColors.RED_COLOR,
  //             AppColors.PINK_TEXT_COLOR,
  //           ],
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //         ),
  //         shape: BoxShape.circle,
  //         boxShadow: [
  //           BoxShadow(
  //             color: AppColors.RED_COLOR,
  //             spreadRadius: 1,
  //             blurRadius: 1,
  //             offset: Offset(0, 1), //! ============> Changes position of shadow
  //           ),
  //           BoxShadow(
  //             color: Colors.white.withOpacity(0.5),
  //             spreadRadius: 5,
  //             blurRadius: 7,
  //             offset: const Offset(
  //                 0, 3), //! ============> Changes position of shadow
  //           )
  //         ],
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Icon(
  //             Icons.add,
  //             color: AppColors.WHITE_COLOR,
  //             size: 40.sp,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
