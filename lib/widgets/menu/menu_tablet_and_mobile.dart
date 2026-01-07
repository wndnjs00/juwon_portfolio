import 'package:flutter/material.dart';

import '../../util/asset_path.dart';
import '../../util/my_color.dart';

class MenuTabletAndMobile extends StatelessWidget {
  const MenuTabletAndMobile({
    required this.currentIndex,
    required this.tablet,
    super.key
  });

  final int currentIndex;
  final bool tablet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
          InkWell(
            onTap: (){
              Scaffold.of(context).openEndDrawer();
            },
            child: Padding(
                padding: EdgeInsets.all(tablet ? 20 : 16),
              child: Image.asset(AssetPath.hamburger, width: 20,height: 20),
            ),
          )
        ],
      ),
    );
  }
}
