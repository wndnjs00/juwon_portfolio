import 'package:flutter/material.dart';
import 'my_color.dart';

class TextUtil{

  static TextStyle get32(BuildContext context, Color color){
    return Theme.of(context).textTheme.headlineLarge!.copyWith(color: color);
  }

  static TextStyle get24(BuildContext context, Color color){
    return Theme.of(context).textTheme.titleLarge!.copyWith(color: color);
  }

  static TextStyle get20(BuildContext context, Color color){
    return Theme.of(context).textTheme.titleMedium!.copyWith(color: color);
  }

  static TextStyle get18(BuildContext context, Color color){
    return Theme.of(context).textTheme.titleSmall!.copyWith(color: color);
  }

  static TextStyle get16(BuildContext context, Color color){
    return Theme.of(context).textTheme.bodyLarge!.copyWith(color: color);
  }

  static TextStyle get15(BuildContext context, Color color){
    return Theme.of(context).textTheme.bodyMedium!.copyWith(color: color);
  }

  static TextStyle get14(BuildContext context, Color color){
    return Theme.of(context).textTheme.bodySmall!.copyWith(color: color);
  }

  static TextStyle get13(BuildContext context, Color color){
    return Theme.of(context).textTheme.labelLarge!.copyWith(color: color);
  }

  static TextStyle get12(BuildContext context, Color color){
    return Theme.of(context).textTheme.labelMedium!.copyWith(color: color);
  }

  static TextStyle get11(BuildContext context, Color color){
    return Theme.of(context).textTheme.labelSmall!.copyWith(color: color);
  }



  static TextTheme setTextTheme() {
    return TextTheme(
      headlineLarge: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: MyColor.gray90,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: MyColor.gray90,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      ),
      labelLarge: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: MyColor.gray90,
      )
    );
  }
}