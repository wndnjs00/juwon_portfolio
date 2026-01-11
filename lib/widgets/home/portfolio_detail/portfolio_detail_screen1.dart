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
        title: "데이터 시각화 컴포넌트",
        overview: "비즈니스 목표에 맞춘 핵심 과제를 정의하고, 사용자 리서치와 데이터 분석을 통해 실행 전략을 수립했습니다.",
        period: "2025.07 ~ 현재",
        people: "개인 프로젝트",
        contributions: [
          '핵심 플로우 전환율 최대 18% 향상',
          '디자인 시스템 구축 및 컴포넌트화',
          '지표 기반의 실험과 학습 문화 정착',
        ],
        imagePaths: [
          AssetPath.officeImage,
          AssetPath.sampleImage,
          AssetPath.officeImage,
        ],
        icon1Image: AssetPath.officeImage,
        icon1Url: "https://play.google.com",
        icon2Image: AssetPath.officeImage,
        icon2Url: "https://play.google.com",
    );
  }
}