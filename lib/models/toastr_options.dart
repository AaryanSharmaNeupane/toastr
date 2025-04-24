import 'package:flutter/material.dart';
import 'package:toastr/toastr.dart';

class ToastrOptions {
  final String message;
  final bool showIcon;
  final IconData icon;
  final Color primaryColor;
  final EdgeInsetsGeometry margin;
  final bool showCloseButton;
  final VoidCallback onClose;
  final TextStyle? messageStyle;
  final ToastStyle toastStyle;
  final BorderRadiusGeometry? borderStyle;

  ToastrOptions({
    required this.message,
    required this.showIcon,
    required this.icon,
    required this.primaryColor,
    required this.margin,
    required this.showCloseButton,
    required this.onClose,
    required this.toastStyle,
    this.messageStyle,
    this.borderStyle,
  });
}
