import 'package:e_store/features/authentication/controllers.onboarding.dart/onboarding_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/images_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_string.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
// import 'dart:html';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingSearching,
                title: EText.onBoardingTitle1,
                subtitle: EText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingShoping,
                title: EText.onBoardingTitle2,
                subtitle: EText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingDilevery,
                title: EText.onBoardingTitle3,
                subtitle: EText.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFuntions.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EDeviceUtile.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? EColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EHelperFuntions.isDarkMode(context);
    return Positioned(
        bottom: EDeviceUtile.getBottomNavigationBarHeight() + 25,
        left: ESizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationclick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? EColors.light : EColors.dark,
              dotHeight: 6),
        ));
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtile.getAppBarHeight(),
        right: ESizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defaultSpace, vertical: 60),
      child: Column(
        children: [
          Center(
              // widthFactor: EHelperFuntions.screenWidth() * 0.8,
              // heightFactor: EHelperFuntions.screenHeight() * 0.1,
              child: Lottie.asset(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
