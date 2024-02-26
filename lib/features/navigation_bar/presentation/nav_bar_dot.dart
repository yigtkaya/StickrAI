import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/styles/text_styles.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.r,
            offset: const Offset(0, -1),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.r),
          topRight: Radius.circular(4.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: _selectedIndex == 0
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.onChange(0);
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            icon: Icon(
                              LucideIcons.sticker,
                              size: 24.h,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "context.l10n.explore",
                              style: TextStyles.buttonSmall,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.onChange(0);
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            icon: Icon(
                              LucideIcons.sticker,
                              size: 24.h,
                              color: Colors.grey,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "context.l10n.explore",
                              style: TextStyles.buttonSmall,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  widget.onChange(1);
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Container(
                    child: _selectedIndex == 1
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                LucideIcons.sticky_note,
                                size: 24.h,
                              ),
                              Flexible(
                                child: Text(
                                  "context.l10n.cart",
                                  style: TextStyles.buttonSmall,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                LucideIcons.sticky_note,
                                size: 24.h,
                                color: Colors.grey,
                              ),
                              Flexible(
                                child: Text(
                                  "context.l10n.cart",
                                  style: TextStyles.buttonSmall,
                                ),
                              ),
                            ],
                          )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
