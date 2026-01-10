import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/text_util.dart';

class CustomStackChip extends StatelessWidget {
  const CustomStackChip({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    super.key
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextUtil.get12(context, textColor).copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
