import 'package:flutter/material.dart';
import 'package:toastr/models/toastr_options.dart';
import 'package:toastr/toastr.dart';

Widget toastrChild(
    {required ToastrOptions options, Color? textColor, Color? crossColor}) {
  Color findIconColor() {
    switch (options.toastStyle) {
      case ToastStyle.minimal:
        return options.primaryColor;
      case ToastStyle.filled:
        return Colors.white;
      case ToastStyle.flat:
        return options.primaryColor;
      case ToastStyle.flatFilled:
        return const Color.fromARGB(157, 0, 0, 0);
    }
  }

  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      options.showIcon
          ? Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                options.icon,
                color: findIconColor(),
              ),
            )
          : const SizedBox.shrink(),
      Flexible(
        child: Text(
          options.message,
          style: options.messageStyle ?? TextStyle(color: textColor),
          softWrap: true,
          overflow: TextOverflow.visible,
        ),
      ),
      options.showCloseButton
          ? SizedBox(
              height: 25,
              width: 30,
              child: IconButton(
                onPressed: options.onClose,
                icon: Icon(
                  Icons.close,
                  color: crossColor ?? const Color.fromARGB(141, 75, 74, 74),
                  size: 20,
                ),
                padding: const EdgeInsets.all(0),
                constraints: BoxConstraints(),
              ),
            )
          : const SizedBox.shrink(),
    ],
  );
}
