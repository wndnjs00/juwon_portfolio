import 'package:flutter/material.dart';

class BottomCircleImage extends StatelessWidget {
  const BottomCircleImage({
    required this.imagePath,
    required this.onTap,
    super.key
  });

  final String imagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Image.asset(
          imagePath,
          width: 28,
          height: 28,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
