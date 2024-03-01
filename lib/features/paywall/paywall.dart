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
import 'package:stickerai/src/shared/widgets/button/custom_elevated_button.dart';

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
    final offers = ref.watch(fetchOffersProvider);
    final selectedPackage = ref.watch(selectedPackageProvider);
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
                  180.rH,
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
                  36.rH,
                  offers.when(
                    data: (data) {
                      return Column(
                        children: [
                          ListView.separated(
                            padding: EdgeInsets.zero,
                            itemCount: data.first.availablePackages.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => 18.rH,
                            itemBuilder: (context, index) {
                              final package = data.first.availablePackages[index];
                              return GestureDetector(
                                onTap: () {
                                  ref.read(selectedPackageProvider.notifier).set(package);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: selectedPackage == package
                                        ? Border.all(
                                            color: AppColors.lightColor,
                                            width: 1.r,
                                          )
                                        : Border.all(
                                            color: AppColors.greyBackground,
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
                                          package.storeProduct.title,
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: AppColors.neutralWhite,
                                          ),
                                        ),
                                        Text(
                                          package.storeProduct.priceString,
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: AppColors.neutralWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          60.rH,
                          MyElevatedButton(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.purpleAccent,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                            onPressed: () {
                              // purchase package
                            },
                            child: Padding(
                              padding: EdgeInsets.all(12.0.h),
                              child: Text(
                                'Subscribe',
                                style: TextStyle(
                                  color: AppColors.neutralWhite,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
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
                      return const CircularProgressIndicator();
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
