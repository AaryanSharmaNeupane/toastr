import 'package:flutter/material.dart';
import 'package:toastr/Widgets/toastr_child.dart';
import 'package:toastr/models/toastr_options.dart';

class ToastrFlatFilled extends StatelessWidget {
  const ToastrFlatFilled({
    super.key,
    required this.options,
  });
  final ToastrOptions options;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: options.margin,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
      padding: EdgeInsets.all(
        12,
      ),
      decoration: BoxDecoration(
        borderRadius: options.borderStyle ?? BorderRadius.circular(8),
        color: options.primaryColor.withAlpha(50),
        border: Border.all(
          color: options.primaryColor.withAlpha(100),
          width: 2,
        ),
      ),
      child: toastrChild(
        options: options,
      ),
    );
  }
}
