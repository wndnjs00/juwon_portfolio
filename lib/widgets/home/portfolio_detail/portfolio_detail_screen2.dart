import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import '../../../util/asset_path.dart';

class PortfolioDetailScreen2 extends StatefulWidget {
  const PortfolioDetailScreen2({super.key});

  @override
  State<PortfolioDetailScreen2> createState() => _PortfolioDetailScreen2State();
}

class _PortfolioDetailScreen2State extends State<PortfolioDetailScreen2> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "맛고 [요리레시피 앱]",
      overview: "지역별 특산물을 활용한 요리레시피 제공 앱입니다.",
      period: "2024.05.27 ~ 07.05",
      people: "팀 프로젝트 [안드로이드 개발자 4명]",
      contributions: [
        '지도기반 지역별 특산물 정보확인',
        '특산물을 활용한 레시피 제공 ',
        '레시피 작성기능',
        '레시피 북마크 기능',
        '로그인 & 회원가입',
      ],
      imagePaths: [
        AssetPath.officeImage,
        AssetPath.officeImage,
        AssetPath.officeImage,
      ],
      icon1Image: AssetPath.playstoreImage,
      icon1Url: "https://play.google.com/store/apps/details?id=nbc.group.recipes",
      icon2Image: AssetPath.githubImage2,
      icon2Url: "https://github.com/nbc-group-4/recipe",
      techStacks: const [
        CustomStackChip(
          text: "Android",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Kotlin",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "MVVM Pattern",
          backgroundColor: MyColor.tagPurple,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Retrofit2",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Okhttp3",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Flow",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Coroutine",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Hilt",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "XML",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "RoomDB",
          backgroundColor: MyColor.tagOrange,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Firebase",
          backgroundColor: MyColor.tagOrange,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
