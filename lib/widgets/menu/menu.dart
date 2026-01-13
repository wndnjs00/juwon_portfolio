import 'package:flutter/material.dart';
import 'package:juwon_portfolio/model/screen_model.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/menu_util.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/menu/menu_height.dart';
import 'package:juwon_portfolio/widgets/util/custom_menu_text_button.dart';
import 'package:juwon_portfolio/widgets/menu/menu_tablet_and_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  const Menu({
    required this.currentIndex,
    required this.screenModel,
    super.key
  });

  final int currentIndex;
  final ScreenModel screenModel;

  @override
  Widget build(BuildContext context) {
    if(screenModel.tablet || screenModel.mobile){
      return MenuTabletAndMobile(currentIndex: currentIndex, tablet: screenModel.tablet);
    }
    
    return Container(
      height: MenuHeight.height,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AssetPath.profileImage),
          ),
          const SizedBox(width: 10),
          Text(
            "전주원",
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
                  ? TextUtil.get15(context, Colors.white).copyWith(fontWeight: FontWeight.bold)
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
                onTap: () async {
                  final uri = Uri.parse('https://github.com/wndnjs00');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.githubImage,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () async {
                  final uri = Uri.parse('https://coding-juuwon2.tistory.com/');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.blogImage,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () async {
                  final uri = Uri.parse('mailto:juwonjeon852@gmail.com');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
                child: ClipOval(
                  child: Image.asset(
                    AssetPath.emailImage,
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
