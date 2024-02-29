import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

SliverWoltModalSheetPage settingSheet() {
  return WoltModalSheetPage(
    backgroundColor: Colors.black,
    isTopBarLayerAlwaysVisible: true,
    hasTopBarLayer: true,
    hasSabGradient: false,
    topBar: Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tr.settings,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
    child: Container(
      color: Colors.black,
      child: Column(
        children: [
          22.rH,
          Container(
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
          20.rH,
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.greyBackground,
                      borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0.r),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              LucideIcons.share,
                              size: 24.h,
                              color: Colors.white,
                            ),
                            6.rH,
                            Text(
                              tr.shareThisApp,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                12.rW,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      String? encodeQueryParameters(
                        Map<String, String> params,
                      ) {
                        return params.entries
                            .map(
                              (MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
                            )
                            .join('&');
                      }

                      final emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'hello@vivitate.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Feedback',
                        }),
                      );

                      launchUrl(emailLaunchUri);
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyBackground,
                        borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0.r),
                        child: Column(
                          children: [
                            Icon(
                              LucideIcons.git_commit_horizontal,
                              size: 24.h,
                              color: Colors.white,
                            ),
                            6.rH,
                            Text(
                              tr.sendFeedback,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          16.rH,
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.greyBackground,
                      borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0.r),
                      child: Column(
                        children: [
                          Icon(
                            LucideIcons.message_circle_question,
                            size: 24.h,
                            color: Colors.white,
                          ),
                          6.rH,
                          Text(
                            tr.faqs,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                12.rW,
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      final inAppReview = InAppReview.instance;
                      if (await inAppReview.isAvailable()) {
                        inAppReview.requestReview();
                      }
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyBackground,
                        borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0.r),
                        child: Column(
                          children: [
                            Icon(
                              LucideIcons.store,
                              size: 24.h,
                              color: Colors.white,
                            ),
                            6.rH,
                            Text(
                              tr.rateThisApp,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          32.rH,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ID:{user.id}",
                style: TextStyle(
                  color: AppColors.neutralWhite,
                  fontSize: 14.sp,
                ),
              ),
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                    const ClipboardData(
                      text: "ID:{user.id}",
                    ),
                  );
                },
                icon: Icon(
                  LucideIcons.copy,
                  size: 24.h,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          32.rH,
        ],
      ),
    ),
  );
}
