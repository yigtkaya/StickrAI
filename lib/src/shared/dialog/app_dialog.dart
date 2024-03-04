import 'package:flutter/material.dart';
import 'package:stickerai/src/shared/widgets/button/alert_button.dart';
import 'package:stickerai/src/shared/extensions/build_context_extension.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.title,
    required this.description,
    required this.buttons,
  });

  final String? title;
  final String description;
  final Widget buttons;

  ///This is simple classic dialog
  factory AppDialog.show(
    BuildContext context, {
    required String title,
    required String description,
    String? confirmText,
    String? cancelText,
    VoidCallback? onTapConfirm,
    VoidCallback? onTapCancel,
    AlertButton? confirmButton,
    AlertButton? cancelButton,
    AlertButton? optionalButton,
  }) {
    if (confirmText != null) {
      onTapConfirm ??= () => context.pop();
    }
    if (cancelText != null) {
      onTapCancel ??= () => context.pop();
    }
    if (onTapConfirm != null) {
      confirmText ??= "tr.ok";
    }
    if (onTapCancel != null) {
      cancelText ??= "tr.cancel";
    }
    final buttons = Column(
      children: [
        if (confirmButton != null)
          confirmButton
        else if (confirmText != null)
          AlertButton(
            text: confirmText,
            onTap: onTapConfirm!,
          ),
        if (cancelText != null || cancelButton != null) const SizedBox(height: 8),
        if (cancelButton != null)
          cancelButton
        else if (cancelText != null)
          AlertButton(
            text: cancelText,
            onTap: onTapCancel!,
            bgColor: Colors.white,
            textColor: Colors.black,
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
        if (optionalButton != null) const SizedBox(height: 8),
        if (optionalButton != null) optionalButton,
      ],
    );
    return AppDialog(title: title, description: description, buttons: buttons);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            Text(
              "title!",
              style: context.textTheme.bodyMedium!.copyWith(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8),
          Text(
            description,
            style: context.textTheme.bodyMedium!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          buttons,
        ],
      ),
    );
  }
}
