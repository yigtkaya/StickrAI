// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:stickerai/features/filter/presentation/filter_page.dart';
import 'package:stickerai/features/generated_image/presentation/generated_image_page.dart';
import 'package:stickerai/features/landing/providers/landing_providers.dart';
import 'package:stickerai/features/settings/settings_sheet.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/dialog/loading_dialog.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/extensions/list_extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

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
              WoltModalSheet.show(
                enableDrag: true,
                barrierDismissible: true,
                context: context,
                modalTypeBuilder: (BuildContext context) {
                  return WoltModalType.bottomSheet;
                },
                pageListBuilder: (BuildContext context) {
                  return [
                    settingSheet(),
                  ];
                },
              );
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
              24.rH,
              Tooltip(
                message: tr.comingSoon,
                triggerMode: TooltipTriggerMode.tap,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyBackground,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 120.0.h),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          // show tooltip as coming soon
                        },
                        icon: const Icon(LucideIcons.image),
                      ),
                    ),
                  ),
                ),
              ),
              56.rH,
              Text(
                tr.startWithAPrompt,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.rH,
              CustomTextField(
                controller: _promptTextController,
                hint: tr.promptHint,
                onChanged: (value) => ref.read(promptTextProvider.notifier).set(value),
              ),
              24.rH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      if (_promptTextController.text.isEmpty) {
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
                                      tr.promptCannotBeEmpty,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                        return;
                      }
                      showDialog(
                        context: context,
                        builder: (context) => const LoadingDialog(),
                      );

                      final stickerResponse =
                          await ref.read(generateStickerProvider(_promptTextController.text).future);
                      if (stickerResponse.output.isNotNullOrEmpty) {
                        context.pop();
                        context.push(
                          GeneratedStickerPage.route(
                            stickerResponse.output ?? [],
                            _promptTextController.text,
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
                          tr.generateSticker,
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
                        context.push(
                          FilterPage.route(),
                        );
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
