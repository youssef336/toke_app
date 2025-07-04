import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap, required this.width});
  double? width;
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        width: width,
        height: 80,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}
