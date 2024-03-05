// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stickerai/core/revenue_cat/app_data.dart';
import 'package:stickerai/features/generated_image/presentation/generated_image_page.dart';
import 'package:stickerai/features/landing/providers/landing_providers.dart';
import 'package:stickerai/features/paywall/paywall.dart';
import 'package:stickerai/features/paywall/repository/paywall_repository.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/widgets/dialog/loading_dialog.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/extensions/list_extension.dart';

class FreemiumWarningDialog extends ConsumerWidget {
  final String prompt;
  const FreemiumWarningDialog({super.key, required this.prompt});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(purhcaseRepositoryProvider).fetchDataFromFirestore();
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.greyBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              onPressed: appData.remainingUsageLimit > 0
                  ? () async {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => const LoadingDialog(),
                      );

                      final stickerResponse = await ref.read(generateStickerProvider(prompt).future);
                      if (stickerResponse.output.isNotNullOrEmpty) {
                        final lastActionTime = DateTime.now();
                        appData.remainingUsageLimit -= 1;
                        ref.read(purhcaseRepositoryProvider).saveDataToFirestore(
                              appData.remainingUsageLimit,
                              lastActionTime,
                            );
                        context.pop();
                        context.pop();
                        context.push(
                          GeneratedStickerPage.route(
                            stickerResponse.output ?? [],
                            prompt,
                          ),
                        );
                      } else {
                        context.pop();

                        FToast().init(context).showToast(
                              gravity: ToastGravity.BOTTOM,
                              toastDuration: const Duration(seconds: 2),
                              fadeDuration: const Duration(milliseconds: 300),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.red,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0.h),
                                  child: Center(
                                    child: Text(
                                      stickerResponse.error.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                      }
                    }
                  : () {
                      FToast().init(context).showToast(
                            gravity: ToastGravity.BOTTOM,
                            toastDuration: const Duration(seconds: 2),
                            fadeDuration: const Duration(milliseconds: 300),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.red,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0.h),
                                child: Center(
                                  child: Text(
                                    "You have used all your limit for today, please upgrade to pro to continue",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                    },
              child: Padding(
                padding: EdgeInsets.all(12.0.w),
                child: Column(
                  children: [
                    Text(
                      "Use your remaining limit ${appData.remainingUsageLimit}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.rH,
                    Text(
                      tr.generateSticker,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.rH,
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  useRootNavigator: true,
                  isDismissible: true,
                  isScrollControlled: true,
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setModalState) {
                        return const PayWall();
                      },
                    );
                  },
                );
                return;
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.orangeAccent,
                      Colors.redAccent,
                      Colors.purpleAccent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        tr.upgradeToPro,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      8.rH,
                      Text(
                        tr.upgradeToProDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            12.rH,
          ],
        ),
      ),
    );
  }
}
