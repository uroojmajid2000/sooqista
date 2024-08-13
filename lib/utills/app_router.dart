import 'package:get/get.dart';
import 'package:sooqista_app/screens/addressbook/addressbook_screen.dart';
import 'package:sooqista_app/screens/bottom_navigation/bindings/bottom_binding.dart';
import 'package:sooqista_app/screens/bottom_navigation/screens/bottom_navgation_screen.dart';
import 'package:sooqista_app/screens/cancelationhistory/cancelationhistory.dart';
import 'package:sooqista_app/screens/cancelorders/cancels_orderscreen.dart';
import 'package:sooqista_app/screens/cart/screens/cart_screens.dart';
import 'package:sooqista_app/screens/categories/screens/categories_screen.dart';
import 'package:sooqista_app/screens/customer_details/bindings/customerdetails_binding.dart';
import 'package:sooqista_app/screens/customer_details/customer_details_screen.dart';
import 'package:sooqista_app/screens/editprofile/editprofile_screen.dart';
import 'package:sooqista_app/screens/forgetpassword/forget_password.dart';
import 'package:sooqista_app/screens/home/screens/home_screen.dart';
import 'package:sooqista_app/screens/login/login_screen.dart';
import 'package:sooqista_app/screens/myorders/myorder_screen.dart';
import 'package:sooqista_app/screens/newaddress/newaddress_screen.dart';
import 'package:sooqista_app/screens/onboarding/onboarding_screen.dart';
import 'package:sooqista_app/screens/orderDetails/orderdetails_screen.dart';
import 'package:sooqista_app/screens/orderhistory_details/orderdetails_history.dart';
import 'package:sooqista_app/screens/paymentDone/paymentdone_screen.dart';
import 'package:sooqista_app/screens/productdetail/bindings/propertydetail_binding.dart';
import 'package:sooqista_app/screens/productdetail/productdetail_screen.dart';
import 'package:sooqista_app/screens/profile/screens/profile_screen.dart';
import 'package:sooqista_app/screens/register/bindings/register_binding.dart';
import 'package:sooqista_app/screens/register/register_screen.dart';
import 'package:sooqista_app/screens/resetpassword/reset_password.dart';
import 'package:sooqista_app/screens/splash/bindings/splash_binding.dart';
import 'package:sooqista_app/screens/splash/screens/splash_screen.dart';
import 'package:sooqista_app/screens/verificationscreen/verification_screen.dart';
import 'package:sooqista_app/screens/welcome_screen/welcome_screen.dart';
import 'package:sooqista_app/screens/wishlist/wishlist_screen.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';

class AppRouter {
  static final routes = [
    GetPage(
      name: AppRouteName.SPLASH_SCREEN_ROUTE,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRouteName.ONBOARDING_ROUTE,
      page: () => const OnboardingScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRouteName.WELCOME_SCREEN_ROUTE,
      page: () => const WelcomeScreen(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: AppRouteName.REGISTER_SCREEN,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouteName.LOGIN_SCREEN,
      page: () => LoginScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouteName.FORGETPASSWORD_SCREEN,
      page: () => ForgetPassword(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouteName.VERIFICATION_SCREEN,
      page: () => VerificationScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouteName.RESETPASSWORD_SCREEN,
      page: () => ResetPasswordScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRouteName.BOTTOM_NAVIGATION_SCREEN_ROUTE,
      page: () => BottomNavigationScreen(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: AppRouteName.HOME_SCREEN_ROUTE,
      page: () => HomeScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.CATEGORY_SCREEN_ROUTE,
      page: () => CategoryScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.CART_SCREEN_ROUTE,
      page: () => CartScreens(),
      // binding: HomeBinding(),
      binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.PROFILE_SCREEN_ROUTE,
      page: () => ProfileScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.WISHLIST_SCREEN_ROUTE,
      page: () => WishlistScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.CUSTOMERDETAILS_SCREEN_ROUTE,
      page: () => CustomerDetailsScreen(),
      binding: CustomerdetailsBinding(),
    ),
    GetPage(
      name: AppRouteName.ORDERDETAILS_ROUTE,
      page: () => OrderdetailsScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.PAYMENTDONE_SCREEN,
      page: () => PaymentdoneScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.PRODUCT_DETAIL_SCREEN_ROUTE,
      page: () => ProductDetailScreen(),
      binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.EDIT_PROFILE_SCREENROUTE,
      page: () => EditprofileScreen(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.ADDRESSBOOK_SCREEN_ROUTE,
      page: () => AddressbookScreen(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.NEWADDRESS_SCREEN_ROUTE,
      page: () => NewaddressScreen(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.MYORDERSCREEN_ROUTE,
      page: () => MyorderScreen(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.ORDERDETAILS_HISTORY,
      page: () => OrderdetailsHistory(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.CANCELORDERSCREEN_ROUTE,
      page: () => CancelsOrderscreen(),
      // binding: PropertydetailBinding(),
    ),
    GetPage(
      name: AppRouteName.CANCELATION_ORDERSCREEN_ROUTE,
      page: () => Cancelationhistory(),
      // binding: PropertydetailBinding(),
    ),
  ];
}
