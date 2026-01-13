import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

import '../../../util/asset_path.dart';

class PortfolioDetailScreen4 extends StatefulWidget {
  const PortfolioDetailScreen4({super.key});

  @override
  State<PortfolioDetailScreen4> createState() => _PortfolioDetailScreen4State();
}

class _PortfolioDetailScreen4State extends State<PortfolioDetailScreen4> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "MiniYoutube [영상재생 앱]",
      overview: "유튜브 동영상을 카테고리별로 쉽게 시청할 수 있는 앱입니다.",
      period: "2024.05.13 ~ 05.23",
      people: "팀 프로젝트 [안드로이드 개발자 4명] - 팀장",
      contributions: [
        '인기 & 다양한 카테고리별 영상제공',
        'YoutubePlayer 라이브러리를 통한 영상재생',
        '영상 저장 & 공유 기능',
      ],
      imagePaths: [
        AssetPath.officeImage,
        AssetPath.officeImage,
        AssetPath.officeImage,
      ],
      icon1Image: AssetPath.playstoreImage,
      icon1Url: "",
      icon2Image: AssetPath.githubImage2,
      icon2Url: "https://github.com/wndnjs00/MiniYouTube",
    );
  }
}
