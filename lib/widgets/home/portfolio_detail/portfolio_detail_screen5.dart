import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

import '../../../util/my_color.dart';

class PortfolioDetailScreen5 extends StatefulWidget {
  const PortfolioDetailScreen5({super.key});

  @override
  State<PortfolioDetailScreen5> createState() => _PortfolioDetailScreen5State();
}

class _PortfolioDetailScreen5State extends State<PortfolioDetailScreen5> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "waterLog [물섭취기록 앱]",
      overview:
          "하루 물 섭취량을 기록하고, 나의 수분 섭취 패턴을 확인하기 위한 목적으로 개발했습니다.\n물 마시는 습관을 기르고, 주간 / 월간 통계를 통해 건강한 수분 섭취 습관을 만들 수 있도록 제작했습니다.",
      period: "2025.10.25 ~ 2026.03.16  [kotlin, Flutter]",
      people: "개인 프로젝트",
      contributions: [
        '소셜 로그인, 이메일 로그인',
        '물 섭취 기록 기능',
        '주간 수분 섭취량 / 월간 평균 섭취량 그래프 기능',
        '알림 기능',
        '로그아웃, 회원탈퇴 기능',
      ],
      targetUsers: [
        '건강한 수분섭취습관을 만들고 싶은 분',
        '나의 물 섭취 패턴을 데이터로 확인하고 싶은 분',
        '목표 물 섭취량을 정하고, 꾸준히 관리하고 싶은 분',
        '수분습관을 게임처럼 관리하고 싶은 분 (뱃지기능 2차 도입예정)',
      ],
      upcomingFeatures: [
        'AI 질문기능 (AI 도우미)',
        '뱃지 기능 (목표 달성률 기반 뱃지부여)',
        'Wear OS 연동',
        'AOS, IOS 배포 예정',
      ],

      imagePaths: [
        AssetPath.detailproject11,
        AssetPath.detailproject12,
        AssetPath.detailproject13,
      ],
      icon1Image: AssetPath.githubImage2,
      icon1Url: "https://github.com/wndnjs00/waterLog",
      icon2Image: AssetPath.githubImage2,
      icon2Url: "https://github.com/wndnjs00/waterlogs",
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
          text: "Jetpack Compose",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Multi-Module",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Dart",
          backgroundColor: MyColor.tagPurple,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "MVVM Pattern",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Clean Architecture",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Firebase Auth/Firestore",
          backgroundColor: MyColor.tagOrange,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Firebase Functions",
          backgroundColor: MyColor.tagOrange,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Firebase Messaging(FCM)",
          backgroundColor: MyColor.tagOrange,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
