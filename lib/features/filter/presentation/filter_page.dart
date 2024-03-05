// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stickerai/core/revenue_cat/app_data.dart';
import 'package:stickerai/features/filter/providers/filter_providers.dart';
import 'package:stickerai/features/generated_image/presentation/generated_image_page.dart';
import 'package:stickerai/features/landing/providers/landing_providers.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/models/input.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/widgets/dialog/freemium_dialog.dart';
import 'package:stickerai/src/shared/widgets/dialog/loading_dialog.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/extensions/list_extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';

class FilterPage extends ConsumerWidget {
  const FilterPage({super.key});

  static const routeName = '/filter';

  static Route<bool> route() {
    return RouteHelper.slide(
      builder: (_) => const FilterPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  static Route<bool> routeDown() {
    return RouteHelper.slideUp(
      builder: (_) => const FilterPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heightController = TextEditingController(text: "1024");
    final widthController = TextEditingController(text: "1024");
    final seedController = TextEditingController();
    final stepsController = TextEditingController(text: "20");
    final upscaleStepsController = TextEditingController(text: "10");
    final promptTextController = TextEditingController();
    final negativePromptTextController = TextEditingController();
    final isUpscaleEnabled = ref.watch(isUpscaleEnabledProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            LucideIcons.x,
            size: 28.h,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr.advancedSettings,
                style: TextStyle(color: Colors.white, fontSize: 24.sp),
              ),
              20.rH,
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.greyBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Column(
                            children: [
                              Text(
                                tr.seed,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              ),
                              8.rH,
                              TextFormField(
                                controller: seedController,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                onChanged: (value) => seedController.text = value,
                                style: TextStyle(
                                  color: AppColors.lightColor,
                                  fontSize: 24.sp,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    8.rW,
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.greyBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Column(
                            children: [
                              Text(
                                tr.height,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              ),
                              8.rH,
                              TextFormField(
                                controller: heightController,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                onChanged: (value) => heightController.text = value,
                                style: TextStyle(
                                  color: AppColors.lightColor,
                                  fontSize: 24.sp,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    8.rW,
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.greyBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                tr.width,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              ),
                              8.rH,
                              TextFormField(
                                controller: widthController,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                onChanged: (value) => widthController.text = value,
                                style: TextStyle(
                                  color: AppColors.lightColor,
                                  fontSize: 24.sp,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.greyBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Column(
                            children: [
                              Text(
                                tr.steps,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              ),
                              8.rH,
                              TextFormField(
                                controller: stepsController,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                onChanged: (value) => heightController.text = value,
                                style: TextStyle(
                                  color: AppColors.lightColor,
                                  fontSize: 24.sp,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    8.rW,
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.greyBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: Column(
                            children: [
                              Text(
                                tr.upscaleSteps,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              ),
                              8.rH,
                              TextFormField(
                                maxLines: 1,
                                controller: upscaleStepsController,
                                textAlign: TextAlign.center,
                                onChanged: (value) => heightController.text = value,
                                style: TextStyle(
                                  color: AppColors.lightColor,
                                  fontSize: 24.sp,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              16.rH,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.greyBackground,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 6.0.h),
                  child: Row(
                    children: [
                      Text(
                        tr.upscale,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.sp,
                        ),
                      ),
                      const Spacer(),
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          value: isUpscaleEnabled,
                          onChanged: (value) {
                            ref.read(isUpscaleEnabledProvider.notifier).changeUpscale();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              16.rH,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.greyBackground,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.h, vertical: 6.0.w),
                  child: Column(
                    children: [
                      Text(
                        tr.negativePrompt,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                      ),
                      TextFormField(
                        controller: negativePromptTextController,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        onChanged: (value) => negativePromptTextController.text = value,
                        style: TextStyle(
                          color: AppColors.lightColor,
                          fontSize: 18.sp,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: tr.negativePromptHint,
                          hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              36.rH,
              CustomTextField(
                controller: promptTextController,
                hint: tr.promptHint,
              ),
              70.rH,
              GestureDetector(
                onTap: () async {
                  if (promptTextController.text.isEmpty) {
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
                  if (!appData.entitlementIsActive) {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) => FreemiumWarningDialog(
                        prompt: promptTextController.text,
                      ),
                    );
                    return;
                  }
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => const LoadingDialog(),
                  );

                  final input = Input(
                    prompt: promptTextController.text,
                    negativePrompt: negativePromptTextController.text,
                    seed: int.parse(seedController.text),
                    height: int.parse(heightController.text),
                    width: int.parse(widthController.text),
                    steps: int.parse(stepsController.text),
                    upscaleSteps: int.parse(upscaleStepsController.text),
                    upscale: isUpscaleEnabled,
                  );
                  final stickerResponse = await ref.read(
                    generateFilteredStickerProvider(input).future,
                  );
                  if (stickerResponse.output.isNotNullOrEmpty) {
                    context.pop();
                    context.push(
                      GeneratedStickerPage.route(
                        stickerResponse.output ?? [],
                        promptTextController.text,
                      ),
                    );
                  } else {
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
                  width: double.infinity,
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
                    child: Center(
                      child: Text(
                        tr.generateSticker,
                        style: TextStyle(color: AppColors.neutralWhite, fontSize: 18.sp),
                      ),
                    ),
                  ),
                ),
              ),
              70.rH,
            ],
          ),
        ),
      ),
    );
  }
}
