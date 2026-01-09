import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/text_util.dart';

class CustomSkillCardWidget extends StatelessWidget {
  const CustomSkillCardWidget({
    this.imagePath,
    required this.skillTitle,
    this.width = 180,
    this.height = 120,
    this.color = Colors.white,
    this.borderColor,
    super.key
  });

  final String? imagePath;
  final String skillTitle;
  final double width;
  final double height;
  final Color color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor ?? Colors.grey.shade200
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              width: 65,
              height: 65,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 5),
          ],
          Text(
            skillTitle,
            style: TextUtil.get15(
                context,
                Colors.black,
            ).copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
