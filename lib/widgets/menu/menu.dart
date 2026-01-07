import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/menu_util.dart';
import 'package:juwon_portfolio/util/my_color.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                MenuUtil.menuList[index],
                style: TextStyle(color: Colors.white),
              ),
            );
          }),
          const SizedBox(width: 5),

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
