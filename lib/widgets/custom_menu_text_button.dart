import 'package:flutter/material.dart';

class CustomMenuTextButton extends StatelessWidget {
  const CustomMenuTextButton({
    required this.text,
    required this.textStyle,
    required this.size,
    required this.onPressed,
    this.padding = EdgeInsets.zero,
    this.radius = 10,
    this.foregroundHoverColor = Colors.white,
    super.key,
  });

  final String text;
  final TextStyle textStyle;
  final Size size;
  final EdgeInsetsGeometry padding;
  final double radius;
  final VoidCallback? onPressed;
  final Color foregroundHoverColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(size),
        fixedSize: WidgetStateProperty.all(size),
        padding: WidgetStateProperty.all(padding),

        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),

        // 텍스트 색
        foregroundColor: WidgetStateProperty.all(foregroundHoverColor),

        // hover / pressed 배경 밝기 조절
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.white.withOpacity(0.22); // 클릭 시 가장 밝게
          }
          if (states.contains(WidgetState.hovered)) {
            return Colors.white.withOpacity(0.22); // hover 시 밝게
          }
          return Colors.transparent;
        }),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
