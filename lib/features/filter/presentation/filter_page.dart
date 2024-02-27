import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  static const routeName = '/login';

  static Route<bool> route() {
    return RouteHelper.slide(
      builder: (_) => const FilterPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final heightController = TextEditingController(text: "1024");
    final widthController = TextEditingController(text: "1024");
    final seedController = TextEditingController();
    final stepsController = TextEditingController(text: "20");
    final upscaleStepsController = TextEditingController(text: "10");
    final promptTextController = TextEditingController();
    final negativePromptTextController = TextEditingController();
    var isUpscaleEnabled = true;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            LucideIcons.chevron_left,
            size: 28.h,
            color: Colors.white,
          ),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     LucideIcons.info,
          //     size: 28.h,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Advanced Settings",
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
                                "Seed",
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
                                "Height",
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
                                "Width",
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
                                "Steps",
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
                                "Upscale Steps",
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
                        "Upscale",
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
                            isUpscaleEnabled = value!;
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
                        "Negative Prompt",
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
                          hintText: "Things you do not want in the sticker",
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
                hint: "A cute cat",
              ),
              70.rH,
              GestureDetector(
                onTap: () {
                  // günlük sınır 3 adet olacak şekilde kontrol yapılacak
                  // subscription kontrolü yapılacak
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
                        "Generate Sticker",
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
