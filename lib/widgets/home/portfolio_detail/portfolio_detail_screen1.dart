import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

class PortfolioDetailScreen1 extends StatefulWidget {
  const PortfolioDetailScreen1({super.key});

  @override
  State<PortfolioDetailScreen1> createState() => _PortfolioDetailScreen1State();
}

class _PortfolioDetailScreen1State extends State<PortfolioDetailScreen1> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
        title: "지키미 [안전지킴이 앱]",
        overview: "재난발생시, 주변 대피소 정보를 한눈에 확인할 수 있는 안전지킴이 앱입니다.\n사용자들의 피드백을 받고 수정하며 보완해 나가기위해 노력하고 있습니다.",
        period: "2024.08.16 ~ 진행중",
        people: "개인 프로젝트",
        contributions: [
          '현재 위치 반경 5km 이내의 대피소 정보확인',
          '좋아요를 통한 대피소 저장',
          '텍스트 & 음성검색 기능',
          'AI를 통한 재난 대처법 제공',
          '재난 커뮤니티 기능',
          '로그인 & 회원가입',
          '다크모드 기능',
        ],
        imagePaths: [
          AssetPath.officeImage,
          AssetPath.sampleImage,
          AssetPath.officeImage,
        ],
        icon1Image: AssetPath.playstoreImage,
        icon1Url: "https://play.google.com/store/apps/details?id=com.myapp.jikimi",
        icon2Image: AssetPath.githubImage2,
        icon2Url: "https://github.com/wndnjs00/jikimi",
    );
  }
}