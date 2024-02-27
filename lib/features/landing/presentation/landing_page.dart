import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:stickerai/features/filter/presentation/filter_page.dart';
import 'package:stickerai/features/generated_image/presentation/generated_image_page.dart';
import 'package:stickerai/features/landing/providers/landing_providers.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';
import 'package:stickerai/src/shared/widgets/image/asset_image.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  static const routeName = '/login';

  static Route<bool> route() {
    return RouteHelper.platform(
      builder: (_) => const LandingPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  final _promptTextController = TextEditingController();
  final _negativePromptTextController = TextEditingController();
  @override
  void initState() {
    _promptTextController.text = ref.read(promptTextProvider);
    _negativePromptTextController.text = ref.read(negativePromptTextProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              // wolt modal bottom sheet
            },
            icon: Icon(
              LucideIcons.settings,
              size: 28.h,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              44.rH,
              Wrap(
                direction: Axis.horizontal,
                children: [
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample2,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample2,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample2,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample,
                    height: 100.w,
                    width: 75.w,
                  ),
                  AssetsImage(
                    imgPath: AssetConstants.images.cuteCatExample2,
                    height: 100.w,
                    width: 75.w,
                  ),
                ],
              ),
              44.rH,
              Text(
                "Start With a Prompt",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.rH,
              CustomTextField(
                controller: _promptTextController,
                hint: "A cute cat",
              ),
              24.rH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      // günlük sınır 3 adet olacak şekilde kontrol yapılacak
                      // subscription kontrolü yapılacak
                      context.push(GeneratedStickerPage.route());
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        gradient: const LinearGradient(
                          colors: [Colors.orangeAccent, Color.fromARGB(255, 236, 104, 104), Colors.purpleAccent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Generate Sticker",
                          style: TextStyle(color: AppColors.neutralWhite, fontSize: 18.sp),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orangeAccent,
                            Color.fromARGB(255, 236, 104, 104),
                            Colors.purpleAccent,
                          ],
                        ),
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        context.push(FilterPage.route());
                      },
                      icon: Icon(
                        LucideIcons.filter,
                        size: 24.h,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
