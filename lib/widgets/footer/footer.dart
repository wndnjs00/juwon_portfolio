import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/menu_util.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/bottom_circle_image.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../util/asset_path.dart';
import '../../util/my_color.dart';
import '../util/custom_menu_text_button.dart';

class Footer extends StatelessWidget {
  const Footer({required this.title, required this.subTitle, super.key});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextUtil.get14(
                      context,
                      Colors.white,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subTitle,
                    style: TextUtil.get13(context, MyColor.gray10),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      BottomCircleImage(
                        imagePath: AssetPath.githubImage,
                        onTap: () async {
                          final uri = Uri.parse('https://github.com/wndnjs00');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri, mode: LaunchMode.externalApplication);
                          }
                        },
                      ),
                      const SizedBox(width: 6),
                      BottomCircleImage(
                        imagePath: AssetPath.blogImage,
                        onTap: () async {
                          final uri = Uri.parse('https://coding-juuwon2.tistory.com/');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri, mode: LaunchMode.externalApplication);
                          }
                        },
                      ),
                      const SizedBox(width: 6),
                      BottomCircleImage(
                        imagePath: AssetPath.emailImage,
                        onTap: () async {
                          final uri = Uri.parse('mailto:juwonjeon852@gmail.com');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri);
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "카테고리",
                    style: TextUtil.get14(
                      context,
                      Colors.white,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  ...List.generate(MenuUtil.menuList.length, (index) {
                    return CustomMenuTextButton(
                      text: MenuUtil.menuList[index],
                      textStyle: TextUtil.get16(
                        context,
                        MyColor.gray10,
                      ).copyWith(fontSize: 13),
                      size: const Size(100, 28),
                      onPressed: () {
                        MenuUtil.changeIndex(context, index);
                      },
                    );
                  }),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "프로젝트",
                    style: TextUtil.get14(
                      context,
                      Colors.white,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  ...List.generate(MenuUtil.projectList.length, (index) {
                    return CustomMenuTextButton(
                      text: MenuUtil.projectList[index],
                      textStyle: TextUtil.get16(
                        context,
                        MyColor.gray10,
                      ).copyWith(fontSize: 13),
                      size: const Size(120, 28),
                      onPressed: () {
                        MenuUtil.scrollToProject(context, index);
                      },
                    );
                  }),
                ],
              ),
            ],
          ),

          const SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.white.withValues(alpha: 0.3),
          ),
          const SizedBox(height: 25),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "© 2026 전주원. All rights reserved.",
                  style: TextUtil.get14(
                    context,
                    MyColor.gray10,
                  ).copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "Flutter로 제작한 웹사이트입니다.",
                  style: TextUtil.get13(context, MyColor.gray10),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
