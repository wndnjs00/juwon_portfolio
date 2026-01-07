import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/menu_util.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/custom_menu_text_button.dart';

class Menu extends StatelessWidget {
  const Menu({
    required this.currentIndex,
    super.key
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AssetPath.officeImage),
          ),
          const SizedBox(width: 10),
          Text(
            "이승현",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            "Android Developer",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: MyColor.gray10,
            ),
          ),
          const Spacer(),

          ...List.generate(MenuUtil.menuList.length, (index) {
            return CustomMenuTextButton(
              text: MenuUtil.menuList[index],
              textStyle: currentIndex == index
                  ? TextUtil.get15(context, Colors.white)
                  : TextUtil.get15(context, MyColor.gray10),
              size: Size(90, 30),
              onPressed: () {
                MenuUtil.changeIndex(context, index);
              },
            );
          }),
          const SizedBox(width: 13),

          Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.officeImage,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: (){},
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.officeImage,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: (){},
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.officeImage,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
