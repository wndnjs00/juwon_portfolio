import 'package:flutter/material.dart';
import 'package:juwon_portfolio/question/widgets/question_web.dart';
import 'package:juwon_portfolio/question/widgets/question_widgets.dart';
import 'package:juwon_portfolio/util/question_util.dart';
import 'package:juwon_portfolio/util/screen_padding.dart';
import 'package:juwon_portfolio/widgets/header/header.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/menu/page_drawer.dart';
import 'package:juwon_portfolio/widgets/question_contents/custom_dropdown_button.dart';
import 'package:juwon_portfolio/widgets/question_contents/custom_text_form_field.dart';
import 'package:juwon_portfolio/widgets/question_contents/question_subtitle.dart';
import 'package:juwon_portfolio/widgets/util/screen_layout_builder.dart';
import 'package:juwon_portfolio/widgets/util/common_scaffold.dart';

import '../widgets/footer/footer.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int selectedIndex = 0;
  late VoidCallback listener = (){
    setState(() {});
  };

  @override
  void initState() {
    QuestionUtil()
      ..initData()
      ..emailController.addListener(listener)
      ..nameController.addListener(listener)
      ..titleController.addListener(listener)
      ..contentController.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    QuestionUtil().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(
      myBuilder: (screenModel, web, tablet, mobile) {
        var width = MediaQuery.of(context).size.width;

        return CommonScaffold(
          currentIndex: 3,
          screenModel: screenModel,
          horizontalPadding: ScreenPadding.get(web, width),

          header: Header(
            title: "문의하기",
            subTitle: "함께 만들고 싶은것이 있다면 언제든지 문의해주세요.",
            screenModel: screenModel,
            showProfileImage: false,
            showActionButtons: false,
            topSpacing: 120,
          ),
          contents: Column(
            children: [
              QuestionSubtitle(screenModel: screenModel),
              QuestionWeb(),
            ],
          ),
          footer: const Footer(
              title: "이승현",
              subTitle: "Android Developer"
          ),
        );
      },
    );
  }
}
