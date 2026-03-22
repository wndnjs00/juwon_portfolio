import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detai_template.dart';

import '../../../util/my_color.dart';

class PortfolioDetailScreen6 extends StatefulWidget {
  const PortfolioDetailScreen6({super.key});

  @override
  State<PortfolioDetailScreen6> createState() => _PortfolioDetailScreen6State();
}

class _PortfolioDetailScreen6State extends State<PortfolioDetailScreen6> {
  @override
  Widget build(BuildContext context) {
    return PortfolioDetaiTemplate(
      title: "Brain Match [카드 매칭 게임앱]",
      overview: "아이들이 즐겁게 놀면서 기억력과 집중력을 키울 수 있도록 만든 카드 매칭 게임입니다.\n잠깐 보여지는 카드들을 기억하고, 같은 카드를 찾아내는 방식으로 놀이 + 학습을 동시에 경험할 수 있도록 제작했습니다.",
      period: "2026.03.19 ~ 2026.03.22",
      people: "개인 프로젝트",
      contributions: [
        '게임시작시 모든카드가 약 3초간 공개되어, 기억할 시간을 제공합니다',
        '이후 카드가 뒤집히고, 플레이어는 같은 카드 2장을 찾아야 합니다',
        '카드를 클릭하면 애니메이션과 함께 뒤집힙니다',
        '같은 카드라면 유지, 틀리면 다시 뒤집힙니다',
        '제한 시간(1분) 내에 모든 카드를 맞추면 성공! 🎉',
        '시간이 끝나면 게임 오버 😂',
        '게임 재시작 가능하며, 플레이할 때마다 카드 위치가 랜덤으로 변경되어 새로운 경험을 제공합니다'
      ],
      targetUsers: [
        '아이의 기억력과 집중력을 자연스럽게 키워주고 싶은 분',
        '게임처럼 재미있게 학습할 수 있는 콘텐츠를 찾는 분',
        '짧은 시간 동안 몰입해서 즐길 수 있는 미니 게임을 원하는 분',
        '귀여운 캐릭터로 아이가 거부감 없이 플레이하길 원하는 분'
      ],
      imagePaths: [
        AssetPath.detailproject14,
        AssetPath.detailproject15,
      ],
      icon1Image: AssetPath.githubImage2,
      icon1Url: "https://github.com/wndnjs00/Brain-Match",
      icon2Image: AssetPath.youtubeImage,
      icon2Url: "https://youtube.com/shorts/thed4LIJ7LQ?si=bfKA3tzrNfV4L1z0",
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
