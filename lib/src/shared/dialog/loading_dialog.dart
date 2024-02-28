import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/src/shared/constants/asset_constants.dart';
import 'package:stickerai/src/shared/extensions/extension.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog({super.key});

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {
  late Timer timer;
  int selectedIndex = 0;

  final images = [
    AssetConstants.images.cuteCatExample,
    AssetConstants.images.bird,
    AssetConstants.images.dinazor,
    AssetConstants.images.smiley,
    AssetConstants.images.women,
    AssetConstants.images.pikachu,
    AssetConstants.images.cuteCat3,
  ];

  @override
  void initState() {
    // TODO: implement initState
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        selectedIndex = (selectedIndex + 1) % images.length;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            reverseDuration: const Duration(milliseconds: 0),
            transitionBuilder: (child, animation) {
              return RotationTransition(
                turns: animation,
                child: child,
              );
            },
            child: Image(
              key: UniqueKey(),
              image: AssetImage(images[selectedIndex]),
              height: 100,
              width: 100,
            ),
          ),
          12.rH,
          Text(
            'Generating Sticker...',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
