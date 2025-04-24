import 'package:flutter/material.dart';
import 'package:toastr/Widgets/toastr_child.dart';
import 'package:toastr/models/toastr_options.dart';

class ToastrFilled extends StatelessWidget {
  const ToastrFilled({super.key, required this.options});
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
        color: options.primaryColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withAlpha(10),
            blurRadius: 2,
            offset: Offset(1, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: toastrChild(
        options: options,
        textColor: Colors.white,
        crossColor: const Color.fromARGB(214, 255, 255, 255),
      ),
    );
  }
}
