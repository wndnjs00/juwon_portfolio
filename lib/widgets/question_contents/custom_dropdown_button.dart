import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    required this.textList,
    required this.height,
    required this.web,
    required this.selectedIndex,
    required this.onChanged,
    super.key,
  });

  final List<String> textList;
  final double height;
  final bool web;
  final int selectedIndex;
  final Function(int index) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.withValues(alpha: 0.5))
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: DropdownButton<int>(
              autofocus: false,
              elevation: 12,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemHeight: height,
              dropdownColor: Colors.white,
              underline: const SizedBox(),
              icon: Visibility(visible: false, child: Icon(Icons.add)),
              style: TextUtil.get16(context, MyColor.gray90),
              value: selectedIndex,
              items: List.generate(textList.length, (index) {
                return DropdownMenuItem(
                  value: index,
                  child: Text(textList[index]),
                );
              }),
              onChanged: (value) {
                onChanged(value!);
              },
            ),
          ),

          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 24,
              color: MyColor.gray40,
            ),
          ),
        ],
      ),
    );
  }
}
