import 'package:flutter/material.dart';
import 'package:juwon_portfolio/model/screen_model.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/custom_text_button.dart';

import '../menu/menu_height.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    this.developerTitle = "",
    required this.subTitle,
    required this.screenModel,
    this.showProfileImage = true,
    this.showActionButtons = true,
    this.topSpacing = 15,
    super.key,
  });

  final String title;
  final String developerTitle;
  final String subTitle;
  final ScreenModel screenModel;
  final bool showProfileImage;
  final bool showActionButtons;
  final double topSpacing;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 430,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: topSpacing),

          if (showProfileImage) ...[
            GestureDetector(
              onTap: () {},
              child: ClipOval(
                child: Image.asset(
                  AssetPath.profileImage,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          SizedBox(height: 5),
          Text(
            title,
            style: TextUtil.get20(
              context,
              Colors.white,
            ).copyWith(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            developerTitle,
            style: TextUtil.get18(
              context,
              MyColor.gray10,
            ).copyWith(fontWeight: FontWeight.w300, fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextUtil.get15(context, Colors.white).copyWith(
              fontWeight: FontWeight.w300,
              fontSize: subTitleFontSize(),
            ),
          ),

          if (showActionButtons) ...[
            SizedBox(height: 45),
            if (screenModel.web) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(
                    text: "프로젝트 보기",
                    textStyle: TextUtil.get16(context, Colors.white),
                    size: Size(140, 44),
                    backgroundColor: MyColor.primaryBlue,
                    onPressed: () {},
                  ),
                  SizedBox(width: 12),
                  CustomTextButton(
                    text: "연락하기",
                    textStyle: TextUtil.get16(context, Colors.white),
                    size: Size(140, 44),
                    backgroundColor: MyColor.gray80,
                    border: BorderSide(
                      color: Colors.white.withValues(alpha: 0.15),
                      width: 1,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ] else ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextButton(
                    text: "프로젝트 보기",
                    textStyle: TextUtil.get16(context, Colors.white),
                    size: Size(140, 44),
                    backgroundColor: MyColor.primaryBlue,
                    onPressed: () {},
                  ),
                  SizedBox(height: 12),
                  CustomTextButton(
                    text: "연락하기",
                    textStyle: TextUtil.get16(context, Colors.white),
                    size: Size(140, 44),
                    backgroundColor: MyColor.gray80,
                    border: BorderSide(
                      color: Colors.white.withValues(alpha: 0.15),
                      width: 1,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ],
        ],
      ),
    );
  }

  double subTitleFontSize() {
    if (screenModel.web) return 18;
    if (screenModel.tablet) return 14;
    return 13;
  }
}
