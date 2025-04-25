// @dart=3.0

import 'package:flutter/material.dart';
import 'package:toastr/Widgets/toastr_filled.dart';
import 'package:toastr/Widgets/toastr_flat.dart';
import 'package:toastr/Widgets/toastr_flat_filled.dart';
import 'package:toastr/animated_toastr_wrapper.dart';
import 'package:toastr/models/toastr_options.dart';
import 'Widgets/toastr_minimal.dart';

enum ToastType { success, error, warning, info }

enum ToastStyle { flat, filled, minimal, flatFilled }

class Toastr {
  static Widget _findToastStyle({
    required ToastrOptions options,
  }) {
    switch (options.toastStyle) {
      case ToastStyle.minimal:
        return ToastrMinimal(
          options: options,
        );
      case ToastStyle.filled:
        return ToastrFilled(
          options: options,
        );
      case ToastStyle.flat:
        return ToastrFlat(
          options: options,
        );
      case ToastStyle.flatFilled:
        return ToastrFlatFilled(
          options: options,
        );
    }
  }

  static Color _findToastType(ToastType type) {
    switch (type) {
      case ToastType.success:
        return Colors.green;
      case ToastType.error:
        return Colors.red;
      case ToastType.warning:
        return Colors.orangeAccent;
      case ToastType.info:
        return Colors.blue;
    }
  }

  static void show({
    required Buil1dContext context,
    required String message,
    Duration closeDuration = const Duration(seconds: 2),
    Alignment alignment = Alignment.center,
    EdgeInsetsGeometry margin = const EdgeInsets.all(30),
    ToastType type = ToastType.success,
    IconData icon = Icons.info,
    bool showIcon = false,
    bool showCloseButton = false,
    ToastStyle toastStyle = ToastStyle.flat,
    TextStyle? messageStyle,
    BorderRadiusGeometry? borderStyle,
    Color? primaryColor,
  }) {
    final overlay = Overlay.of(context);
    primaryColor = primaryColor ?? _findToastType(type);
    late OverlayEntry overlayEntry;
    bool isOverlayClosed = false;

    void close() {
      if (!isOverlayClosed && overlayEntry.mounted) {
        overlayEntry.remove();
        isOverlayClosed = true;
      }
    }

    overlayEntry = OverlayEntry(
      builder: (_) => Align(
        alignment: alignment,
        child: Material(
          color: Colors.transparent,
          child: AnimatedToastrWrapper(
            closeDuration: closeDuration,
            onClose: close,
            child: _findToastStyle(
              options: ToastrOptions(
                message: message,
                showIcon: showIcon,
                icon: icon,
                primaryColor: primaryColor!,
                margin: margin,
                showCloseButton: showCloseButton,
                toastStyle: toastStyle,
                onClose: close,
                messageStyle: messageStyle,
                borderStyle: borderStyle,
              ),
            ),
          ),
        ),
      ),
    );
    overlay.insert(overlayEntry);

    Future.delayed(
      closeDuration,
    ).then((_) {
      close();
    });
  }
}
