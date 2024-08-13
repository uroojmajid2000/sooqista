import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';
import 'package:sooqista_app/utills/app_navigation.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';
import 'package:sooqista_app/utills/assets_paths.dart';
import 'package:sooqista_app/widgets/custom_button.dart';
import 'package:sooqista_app/widgets/skip_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  final int _delaySeconds = 5;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: _delaySeconds), (timer) {
      if (_pageIndex == demo_data.length - 1) {
        _pageController.jumpToPage(0);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: SkipButton(
                    onTap: () {
                      AppNavigation.navigateToRemovingAll(
                          context, AppRouteName.WELCOME_SCREEN_ROUTE);
                    },
                    text: "SKIP",
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => onboardingContainer(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                  pageIndex: _pageIndex,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 10.h : 10.h,
      width: 10.w,
      decoration: BoxDecoration(
        color: isActive ? AppColors.PRIMARY_COLOR : AppColors.NON_ACTIVE_DOT,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;
  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
      image: AssetPaths.ONBOARDING_SCREEN,
      title: 'Your Shopping Adventure Awaits!',
      description:
          "Your ultimate destination for effortless shopping. Let's get started and make every purchase a joy!"),
  Onboard(
      image: AssetPaths.ONBOARDING_SCREEN,
      title: 'Your Shopping Adventure Awaits!',
      description:
          "Your ultimate destination for effortless shopping. Let's get started and make every purchase a joy!"),
  Onboard(
      image: AssetPaths.ONBOARDING_SCREEN,
      title: 'Your Shopping Adventure Awaits!',
      description:
          "Your ultimate destination for effortless shopping. Let's get started and make every purchase a joy!"),
  Onboard(
      image: AssetPaths.ONBOARDING_SCREEN,
      title: 'Your Shopping Adventure Awaits!',
      description:
          "Your ultimate destination for effortless shopping. Let's get started and make every purchase a joy!"),
];

class onboardingContainer extends StatelessWidget {
  const onboardingContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageIndex,
  });
  final String image, title, description;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 65.h,
          ),
          Image.asset(
            image,
            height: 220.h,
          ),
          SizedBox(
            height: 70.h,
          ),
          SizedBox(
            width: 320.w,
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 320.w,
            child: Text(
              description,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.BLACK_COLOR,
                fontSize: 16,
                fontFamily: AppFonts.interRegular,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                demo_data.length,
                ((index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: DotIndicator(isActive: index == pageIndex),
                    )),
              ),
            ],
          ),
          // SizedBox(
          //   height: 10.h,
          // ),
          Spacer(),
          CustomButton(
            buttonColor: AppColors.BLACK_COLOR,
            buttonText: "Let’s Get Started",
            onTap: () {
              // AppNavigation.navigateTo(
              //     context, AppRouteName.WELCOME_SCREEN_ROUTE);

              AppNavigation.navigateToRemovingAll(
                  context, AppRouteName.WELCOME_SCREEN_ROUTE);
            },
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
