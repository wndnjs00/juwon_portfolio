import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/menu_util.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/custom_menu_text_button.dart';

import '../../util/my_color.dart';
import '../util/bottom_circle_image.dart';

class PageDrawer extends StatelessWidget {
  const PageDrawer({
    required this.currentIndex,
    required this.tablet,
    super.key
  });

  final int currentIndex;
  final bool tablet;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      backgroundColor: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: (){
                Scaffold.of(context).closeEndDrawer();
              },
              customBorder: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(30),
                child: Icon(Icons.close, size: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),

          ...List.generate(MenuUtil.menuList.length, (index){
            var selected = TextUtil.get15(context, Colors.white).copyWith(fontWeight: FontWeight.bold);
            var unSelected = TextUtil.get15(context, MyColor.gray10);

            return CustomMenuTextButton(
                text: MenuUtil.menuList[index],
                textStyle: currentIndex == index ? selected : unSelected,
                size: Size(double.infinity, 50),
                onPressed: (){
                  Scaffold.of(context).closeEndDrawer();
                  Future.delayed(const Duration(microseconds: 200), (){
                    MenuUtil.changeIndex(context, index);
                  });
                }
            );
          }),
          
          const Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 2,
              color: Colors.white.withValues(alpha: 0.3),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BottomCircleImage(
                  imagePath: AssetPath.officeImage,
                  onTap: (){},
              ),
              const SizedBox(width: 15),
              BottomCircleImage(
                imagePath: AssetPath.officeImage,
                onTap: (){},
              ),
              const SizedBox(width: 15),
              BottomCircleImage(
                imagePath: AssetPath.officeImage,
                onTap: (){},
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
