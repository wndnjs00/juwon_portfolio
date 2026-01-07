import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    required this.textStyle,
    required this.size,
    this.onPressed,
    this.padding = EdgeInsets.zero,
    this.radius = 10,
    this.backgroundColor = Colors.transparent,
    this.border = BorderSide.none,
    super.key,
  });

  final String text;
  final TextStyle textStyle;
  final Size size;
  final EdgeInsetsGeometry padding;
  final double radius;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final BorderSide border;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: size,
        maximumSize: size,
        fixedSize: size,
        padding: padding,
        backgroundColor: onPressed == null ? null : backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: border,
        ),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
