import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

import '../../../util/my_color.dart';
import '../custom_stack_chip.dart';

class PortfolioDetailScreen7 extends StatefulWidget {
  const PortfolioDetailScreen7({super.key});

  @override
  State<PortfolioDetailScreen7> createState() => _PortfolioDetailScreen7State();
}

class _PortfolioDetailScreen7State extends State<PortfolioDetailScreen7> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "TrashFlight [쓰레기 제거 슈팅게임앱]",
      overview: "플레이어가 무기를 발사해 쓰레기를 제거하고, 코인을 수집하며 점점 강해지는 게임입니다.\n코인을 모아 무기를 강화하고, 점점 강해지는 쓰레기들을 처치하며 최종 보스를 클리어하는 것을 목표로 제작했습니다.",
      period: "2026.03.19 ~ 2026.03.21",
      people: "개인 프로젝트",
      contributions: [
        '플레이어는 자동으로 무기를 발사합니다',
        '쓰레기(적)를 처치하면 코인이 생성됩니다',
        '코인을 획득하면 무기가 점점 강화됩니다',
        '시간이 지날수록 더 강한 적이 등장합니다',
        '마지막에는 보스가 등장합니다',
        '플레이어가 적에 닿거나, 보스를 처치하면 게임 종료됩니다'
      ],
      targetUsers: [
        '짧은 시간 동안 몰입감 있는 게임을 즐기고 싶은 분',
        '반복 플레이를 통해 점점 강해지는 재미를 느끼고 싶은 분'
      ],
      imagePaths: [
        AssetPath.detailproject16,
        AssetPath.detailproject17,
      ],
      icon1Image: AssetPath.githubImage2,
      icon1Url: "https://github.com/wndnjs00/TrashFlight",
      icon2Image: AssetPath.youtubeImage,
      icon2Url: "https://youtube.com/shorts/ZfzyMLqC438?si=ryUQ8WuML7tCMepX",
      techStacks: const [
        CustomStackChip(
          text: "Unity - 2022.3.2f1",
          backgroundColor: MyColor.tagPink,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "Visual Studio Code",
          backgroundColor: MyColor.tagYellow,
          textColor: Colors.black,
        ),
        CustomStackChip(
          text: "C#",
          backgroundColor: MyColor.tagPurple,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
