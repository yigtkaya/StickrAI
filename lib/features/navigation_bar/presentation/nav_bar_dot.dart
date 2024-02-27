import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/constants/app_color_constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;

  const CustomBottomNavBar({
    super.key,
    required this.defaultSelectedIndex,
    required this.onChange,
  });

  @override
  CustomBottomNavBarState createState() => CustomBottomNavBarState();
}

class CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12.h),
        height: 60.h,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColors.greyBackground.withOpacity(0.8),
          borderRadius: BorderRadius.circular(18.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyBackground.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(0, 20),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  widget.onChange(0);
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Icon(
                  LucideIcons.sticker,
                  color: _selectedIndex != 0 ? Colors.grey : AppColors.neutralWhite,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  widget.onChange(1);
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Icon(
                  LucideIcons.layout_list,
                  color: _selectedIndex != 1 ? Colors.grey : AppColors.neutralWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
