import 'package:flutter/material.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';
import 'package:stickerai/src/shared/widgets/circular_progress/custom_circular_progress.dart';

void showLoader(BuildContext context) {
  _appLoading(context);
}

void hideLoader(BuildContext context) {
  context.pop();
}

void _appLoading(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "appLoading",
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 40,
          height: 40,
          child: Center(child: CustomCircularProgressIndicator()),
        ),
      );
    },
  );
}
