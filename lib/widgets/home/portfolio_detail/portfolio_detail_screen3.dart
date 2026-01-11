import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

import '../../../util/asset_path.dart';

class PortfolioDetailScreen3 extends StatefulWidget {
  const PortfolioDetailScreen3({super.key});

  @override
  State<PortfolioDetailScreen3> createState() => _PortfolioDetailScreen3State();
}

class _PortfolioDetailScreen3State extends State<PortfolioDetailScreen3> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "데이터 시각화 컴포넌트3",
      overview: "비즈니스 목표에 맞춘 핵심 과제를 정의하고, 사용자 리서치와 데이터 분석을 통해 실행 전략을 수립했습니다33",
      period: "2025.07 ~ 현재",
      people: "개인 프로젝트3",
      contributions: [
        '핵심 플로우 전환율 최대 18% 향상3',
        '디자인 시스템 구축 및 컴포넌트화3',
        '지표 기반의 실험과 학습 문화 정착3',
      ],
      imagePaths: [
        AssetPath.officeImage,
        AssetPath.officeImage,
        AssetPath.officeImage,
      ],
      icon1Image: AssetPath.officeImage,
      icon1Url: "https://play.google.com",
      icon2Image: AssetPath.officeImage,
      icon2Url: "https://play.google.com",
    );
  }
}