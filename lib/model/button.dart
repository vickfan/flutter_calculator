import 'dart:math';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  final bool isLongButton;
  final onTap;

  const Button(
      {Key? key,
      required this.label,
      required this.onTap,
      required this.backgroundColor,
      required this.labelColor,
      this.isLongButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextButton(
          onPressed: () {
            onTap();
          },
          style: TextButton.styleFrom(
              fixedSize: Size(isLongButton ? 78 + 78 + 20 : 78, 78),
              alignment: Alignment(0.0, 0.0),
              // padding: EdgeInsets.all(16),
              shape: isLongButton
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))
                  : CircleBorder(),
              backgroundColor: backgroundColor),
          child: Text(
            label,
            style: TextStyle(
                color: labelColor, fontSize: 36, fontWeight: FontWeight.w600),
          )),
    );
  }
}
