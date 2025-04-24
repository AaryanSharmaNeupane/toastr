import 'package:flutter/material.dart';
import 'package:toastr/Widgets/toastr_child.dart';
import 'package:toastr/models/toastr_options.dart';

class ToastrFlat extends StatelessWidget {
  const ToastrFlat({
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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withAlpha(10),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: toastrChild(
        options: options,
      ),
    );
  }
}
