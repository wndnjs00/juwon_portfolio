import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/text_util.dart';

class CustomSkillCardWidget extends StatefulWidget {
  const CustomSkillCardWidget({
    this.imagePath,
    required this.skillTitle,
    this.width = 180,
    this.height = 120,
    this.color = Colors.white,
    this.borderColor,
    this.enableHover = true,
    super.key,
  });

  final String? imagePath;
  final String skillTitle;
  final double width;
  final double height;
  final Color color;
  final Color? borderColor;
  final bool enableHover;

  @override
  State<CustomSkillCardWidget> createState() => _CustomSkillCardWidgetState();
}

class _CustomSkillCardWidgetState extends State<CustomSkillCardWidget> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    // hover 비활성화시, 카드만 반환
    if (!widget.enableHover) {
      return _buildCard(isHover: false);
    }

    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: _buildCard(isHover: _isHover),
    );
  }

  Widget _buildCard({required bool isHover}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeOut,
      transform: isHover
          ? Matrix4.translationValues(0, -5, 0)
          : Matrix4.identity(),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: widget.borderColor ?? Colors.grey.shade200,
        ),
        boxShadow: isHover
            ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ]
            : [],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.imagePath != null) ...[
            Image.asset(
              widget.imagePath!,
              width: 65,
              height: 65,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 6),
          ],
          Text(
            widget.skillTitle,
            style: TextUtil.get15(
              context,
              Colors.black,
            ).copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
