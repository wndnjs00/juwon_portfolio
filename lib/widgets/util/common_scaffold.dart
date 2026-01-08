import 'package:flutter/material.dart';
import 'package:juwon_portfolio/model/screen_model.dart';
import 'package:juwon_portfolio/widgets/footer/footer.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/menu/page_drawer.dart';

import '../menu/menu_height.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.currentIndex,
    required this.screenModel,
    required this.children,
    super.key
  });

  final int currentIndex;
  final ScreenModel screenModel;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    children.add(Footer(title: "이승현", subTitle: "Android Developer"));
    return Scaffold(
      endDrawer: PageDrawer(
          currentIndex: currentIndex,
          tablet: screenModel.tablet,
      ),
      body:Stack(
        children: [
          Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: MenuHeight.height),
                child: Column(
                  children: children,
                ),
              ),
          ),
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Menu(currentIndex: currentIndex, screenModel: screenModel)
          )
        ],
      ),
    );
  }
}
