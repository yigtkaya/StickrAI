// ignore_for_file: use_build_context_synchronously

import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';
import 'package:stickerai/features/navigation_bar/presentation/bottom_navigation.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingScreen extends StatelessWidget {
  final Function()? onTap;
  const OnboardingScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
            image: AssetImage(AssetConstants.images.onboarding),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutralBlack.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.h),
                    child: Center(
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.purpleAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          tr.onboardingFirstTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              60.rH,
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.purpleAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.h),
                    child: Center(
                      child: Text(
                        tr.devam,
                        style: TextStyle(
                          color: AppColors.neutralBlack,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              12.rH,
              Text(
                tr.onboardingDisclaimer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.neutralWhite,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              20.rH,
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: AppColors.lightColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${tr.termsAndConditions} - ',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          /// TODO
                        },
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          /// TODO
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingSecondScreen extends ConsumerStatefulWidget {
  const OnboardingSecondScreen({super.key});

  @override
  ConsumerState<OnboardingSecondScreen> createState() => _OnboardingSecondScreenState();
}

class _OnboardingSecondScreenState extends ConsumerState<OnboardingSecondScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
            image: AssetImage(AssetConstants.images.onboarding2),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutralBlack.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.h),
                    child: Center(
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.purpleAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          tr.onboardingSecondTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              60.rH,
              GestureDetector(
                onTap: () async {
                  context.pushAndRemoveUntil(
                    BottomNavBar.route(),
                  );
                  hiveStorage.writeBool(key: StorageKey.firstTime, value: true);
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.purpleAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0.h),
                    child: Center(
                      child: Text(
                        tr.start,
                        style: TextStyle(
                          color: AppColors.neutralBlack,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              12.rH,
              Text(
                tr.onboardingDisclaimer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.neutralWhite,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              20.rH,
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: AppColors.lightColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${tr.termsAndConditions} - ',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(
                            Uri.parse(
                              "https://yigtkaya.github.io/StickerAiTermsAndConditions.html",
                            ),
                          );
                        },
                    ),
                    TextSpan(
                      text: tr.privacyPolicy,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(
                            Uri.parse(
                              "https://yigtkaya.github.io/StickerAiPrivacyPolicy.html",
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  final pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingScreen(
            onTap: () {
              pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          const OnboardingSecondScreen(),
        ],
      ),
    );
  }
}
