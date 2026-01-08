import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/header/header.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/menu/page_drawer.dart';
import 'package:juwon_portfolio/widgets/screen_layout_builder.dart';
import 'package:juwon_portfolio/widgets/util/common_scaffold.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(myBuilder: (screenModel, web, tablet, mobile){
      return CommonScaffold(
          currentIndex: 3,
          screenModel: screenModel,
          children: [
            Header(
              title: "문의하기",
              subTitle: "함께 만들고 싶은것이 있다면 언제든지 문의해주세요.",
              screenModel: screenModel,
              showProfileImage: false,
              showActionButtons: false,
              topSpacing: 50,
            )
          ]);
    });
  }
}
