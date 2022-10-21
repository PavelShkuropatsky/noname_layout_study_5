import 'package:flutter/material.dart';
import 'package:noname_layout_study_5/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  const BorderBox({
    super.key,
    this.width,
    this.height,
    this.padding,
    required this.child,
    this.backgroundColor = whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: greyColor.withAlpha(40),
          width: 2,
        ),
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}
