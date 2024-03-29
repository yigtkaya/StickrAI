// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:saver_gallery/saver_gallery.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';
import 'package:stickerai/core/revenue_cat/app_data.dart';
import 'package:stickerai/features/filter/presentation/filter_page.dart';
import 'package:stickerai/features/generated_image/providers/generated_image_providers.dart';
import 'package:stickerai/features/landing/providers/landing_providers.dart';
import 'package:stickerai/features/paywall/repository/paywall_repository.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/widgets/dialog/freemium_dialog.dart';
import 'package:stickerai/src/shared/widgets/dialog/loading_dialog.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:stickerai/src/shared/extensions/list_extension.dart';
import 'package:stickerai/src/shared/helpers/route_helper.dart';
import 'package:stickerai/src/shared/widgets/form-area/custom_form_field.dart';
import 'package:shimmer/shimmer.dart';

class GeneratedStickerPage extends ConsumerWidget {
  final List<String> stickers;
  final String prompt;
  const GeneratedStickerPage({super.key, required this.stickers, required this.prompt});

  static const routeName = '/generated-sticker';

  static Route<bool> route(List<String> output, String prompt) {
    return RouteHelper.platform(
      builder: (_) => GeneratedStickerPage(
        prompt: prompt,
        stickers: output,
      ),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSticker = ref.watch(selectedStickerProvider);
    final promptController = TextEditingController(text: prompt);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
              onPressed: () {
                saveStickersToHive(stickers);
                context.pop();
              },
              child: Text(
                tr.done,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      ref.read(selectedStickerProvider.notifier).set(0);
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        border: selectedSticker == 0 ? Border.all(color: AppColors.neutralWhite, width: 2.r) : null,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: CachedNetworkImage(
                          imageUrl: stickers.first,
                          imageBuilder: (context, imageProvider) => Container(
                            width: 100.0.w,
                            height: 100.0.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => SizedBox(
                            width: 100.0.w,
                            height: 100.0.h,
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                  12.rW,
                  GestureDetector(
                    onTap: () {
                      ref.read(selectedStickerProvider.notifier).set(1);
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        border: selectedSticker == 1 ? Border.all(color: AppColors.neutralWhite, width: 2.r) : null,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: stickers.last,
                        imageBuilder: (context, imageProvider) => Container(
                          width: 100.0.w,
                          height: 100.0.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => SizedBox(
                          width: 100.0.w,
                          height: 100.0.h,
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
                  ),
                ],
              ),
              12.rH,
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: CachedNetworkImage(
                  imageUrl: stickers[selectedSticker],
                  placeholder: (context, url) => SizedBox(
                    width: double.infinity,
                    height: 400.h,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!.withOpacity(0.5),
                      highlightColor: Colors.grey[100]!.withOpacity(0.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              16.rH,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.greyBackground, width: 2.r),
                ),
                child: CustomTextField(
                  controller: promptController,
                  validator: (value) => value!.isEmpty ? tr.promptCannotBeEmpty : null,
                ),
              ),
              12.rH,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.push(
                          FilterPage.routeDown(),
                        );
                      },
                      behavior: HitTestBehavior.opaque,
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
                                tr.adjust,
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
                  ),
                  12.rW,
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        if (!appData.entitlementIsActive) {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (context) => FreemiumWarningDialog(
                              prompt: prompt,
                            ),
                          );
                          return;
                        }

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
                      },
                      behavior: HitTestBehavior.opaque,
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
                                tr.generateAgain,
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
                  ),
                ],
              ),
              16.rH,
              GestureDetector(
                onTap: () {
                  saveSticker(stickers[selectedSticker], context);
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.neutralWhite,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        tr.saveSticker,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              40.rH,
            ],
          ),
        ),
      ),
    );
  }

  void saveStickersToHive(List<String> stickers) {
    final currentSavedStickers = hiveStorage.readList(
      key: StorageKey.userGeneratedStickers,
    );

    if (currentSavedStickers == null) {
      final map = {
        prompt: stickers,
      };
      hiveStorage.writeList(
        key: StorageKey.userGeneratedStickers,
        value: [map],
      );
      return;
    }

    final map = {
      prompt: stickers,
    };

    final updatedList = currentSavedStickers..add(map);

    hiveStorage.writeList(
      key: StorageKey.userGeneratedStickers,
      value: updatedList,
    );
  }

  void saveSticker(String url, BuildContext context) async {
    final response = await Dio().get(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final picturesPath = "stickrai$prompt.png";
    debugPrint(picturesPath);
    final result = await SaverGallery.saveImage(
      Uint8List.fromList(response.data),
      quality: 60,
      name: picturesPath,
      androidRelativePath: "Pictures/appName/xx",
      androidExistNotSave: false,
    );
    debugPrint(result.toString());

    if (result.isSuccess) {
      FToast().init(context).showToast(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Center(
                  child: Text(tr.savedSuccessfully),
                ),
              ),
            ),
          );
      return;
    } else {
      FToast().init(context).showToast(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Center(
                  child: Text(tr.cannotSaveSticker),
                ),
              ),
            ),
          );
    }
  }
}
