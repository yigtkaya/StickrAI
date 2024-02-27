import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';
import 'package:stickerai/src/shared/widgets/image/asset_image.dart';

class GeneratedStickerPage extends StatelessWidget {
  const GeneratedStickerPage({super.key});

  static const routeName = '/generated-sticker';

  static Route<bool> route() {
    return RouteHelper.platform(
      builder: (_) => const GeneratedStickerPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                "Done",
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            12.rH,
            AssetsImage(imgPath: AssetConstants.images.cuteCatExample),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: AppColors.greyBackground, width: 2.r),
              ),
              child: CustomTextField(
                controller: TextEditingController(text: "prompt"),
              ),
            ),
            12.rH,
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: AppColors.greyBackground, width: 2.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LucideIcons.filter,
                            size: 24.h,
                            color: Colors.white,
                          ),
                          8.rW,
                          Text(
                            "Adjust",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                12.rW,
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: AppColors.greyBackground, width: 2.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LucideIcons.dices,
                            size: 24.h,
                            color: Colors.white,
                          ),
                          8.rW,
                          Text(
                            "Generate Again",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            16.rH,
            Container(
              decoration: BoxDecoration(
                color: AppColors.neutralWhite,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Save Sticker",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            40.rH,
          ],
        ),
      ),
    );
  }
}
