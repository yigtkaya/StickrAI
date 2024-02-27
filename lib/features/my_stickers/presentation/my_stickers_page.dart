import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/settings/settings_sheet.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Text(
          'My Stickers',
          style: TextStyle(
            color: AppColors.neutralWhite,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
