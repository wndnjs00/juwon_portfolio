import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/util/common_scaffold.dart';
import 'package:juwon_portfolio/widgets/footer/footer.dart';
import 'package:juwon_portfolio/widgets/header/header.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/menu/page_drawer.dart';
import 'package:juwon_portfolio/widgets/util/screen_layout_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(myBuilder: (screenModel, web, tablet, mobile){
      return CommonScaffold(
          currentIndex: 0,
          screenModel: screenModel,
          children: [
            Header(
                title: "이승현",
                subTitle: "Flutter와 React를 중심으로 빠른 UX와 견고한 구조를 설계하는 프론트엔드 개발자입니다.\n항상 열정적으로 임하며, 어떤 도전에도 긍정적인 태도로 임합니다.",
                developerTitle: "Android Developer",
                screenModel: screenModel
            )
          ]);
    });
  }
}
