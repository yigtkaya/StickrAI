import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stickerai/features/generated_image/presentation/generated_image_page.dart';
import 'package:stickerai/features/my_stickers/providers/my_stickers_provider.dart';
import 'package:stickerai/settings/settings_sheet.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MyStickersPage extends ConsumerWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stickers = ref.read(myStickersProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              // wolt modal bottom sheet
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
        centerTitle: true,
        title: Text(
          'Your Stickers',
          style: TextStyle(
            color: AppColors.neutralWhite,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: stickers.isNotEmpty
          ? buildingStickerList(stickers)
          : Center(
              child: Text(
                'You have not created a sticker yet',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}

Widget buildingStickerList(List<dynamic> mapList) => GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 20.0.h, // spacing between rows
        crossAxisSpacing: 12.0.w, // spacing between columns
      ),
      itemCount: mapList.length,
      itemBuilder: (context, index) {
        final map = mapList[index];
        final prompt = map.keys.first;
        final stickers = map.values.first;

        return GestureDetector(
          onTap: () {
            context.push(
              GeneratedStickerPage.route(map.values.first as List<String>, prompt),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.greyBackground,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
            height: 250.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: CachedNetworkImage(
                        width: double.infinity,
                        imageUrl: stickers.first,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => SizedBox(
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
                  6.rH,
                  Text(
                    prompt,
                    style: TextStyle(
                      color: AppColors.neutralWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
