import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/features/paywall/providers/paywall_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';

class PayWall extends ConsumerStatefulWidget {
  const PayWall({super.key});

  static const routeName = '/paywall';

  static Route<bool> route() {
    return RouteHelper.slideUp(
      builder: (_) => const PayWall(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  ConsumerState<PayWall> createState() => _PayWallState();
}

class _PayWallState extends ConsumerState<PayWall> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final offers = ref.read(fetchOffersProvider);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AssetConstants.images.paywall,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, AppColors.deepPurple],
                stops: [0, .65],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  100.rH,
                  Text(
                    'Get Premium Access',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.neutralWhite,
                    ),
                  ),
                  Text(
                    "Subscribe to unlock all features",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                  12.rH,
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            LucideIcons.check,
                            size: 20.h,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                        TextSpan(
                          text: " Unlimited access",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  12.rH,
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            LucideIcons.check,
                            size: 20.h,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                        TextSpan(
                          text: " No more ads",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  12.rH,
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            LucideIcons.check,
                            size: 20.h,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                        TextSpan(
                          text: " Cancel anytime",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.neutralWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  24.rH,
                  offers.when(
                    data: (data) {
                      final weekly = data.first.weekly;
                      final monthly = data.first.monthly;
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.lightColor,
                                width: 1.r,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 14.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                  Text(
                                    '\$9.99',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.lightColor,
                                width: 1.r,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 14.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                  Text(
                                    '\$9.99',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    error: (err, stc) {
                      return const Text('Something went wrong');
                    },
                    loading: () {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.lightColor,
                                  width: 1.r,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 14.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Monthly',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColors.neutralWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '\$9.99',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColors.neutralWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          16.rH,
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.greyBackground,
                              border: Border.all(
                                color: AppColors.neutralWhite,
                                width: 1.r,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 24.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                  Text(
                                    '\$9.99',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: AppColors.neutralWhite,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 40.h, left: 20.w),
              child: IconButton(
                icon: Icon(
                  LucideIcons.x,
                  color: AppColors.neutralWhite,
                  size: 32.h,
                ),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
