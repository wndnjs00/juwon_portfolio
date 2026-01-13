import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
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
      title: "readway [독서기록 앱]",
      overview: "내가 읽은 책을 책장에 저장하고, 책의 페이지수와 리뷰를 쉽게 기록하기위한 목적으로 개발했습니다.",
      period: "2025.11.11 ~ 11.17",
      people: "개인 프로젝트",
      contributions: [
        '책장에 좋아요한 책 저장',
        '책검색 기능',
        '책 세부정보 확인 기능',
        '독서 페이지 기록 & 리뷰 기록',
        '다국어 지원',
      ],
      imagePaths: [
        AssetPath.officeImage,
        AssetPath.officeImage,
        AssetPath.officeImage,
      ],
      icon1Image: AssetPath.playstoreImage,
      icon1Url: "https://play.google.com",
      icon2Image: AssetPath.githubImage2,
      icon2Url: "https://github.com/wndnjs00/readway",
      showIcon1: false,
      techStacks: const [
        CustomStackChip(
          text: "Flutter",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Dart",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "MVVM Pattern",
          backgroundColor: MyColor.tagPurple,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Riverpod",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "google-books api",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "carousel_slider",
          backgroundColor: MyColor.tagYellow,
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