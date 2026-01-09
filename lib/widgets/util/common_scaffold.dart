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
    required this.header,
    required this.contents,
    required this.footer,
    this.horizontalPadding = 0,
    super.key
  });

  final int currentIndex;
  final ScreenModel screenModel;
  final double horizontalPadding;
  final Widget header;
  final Widget contents;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: PageDrawer(
          currentIndex: currentIndex,
          tablet: screenModel.tablet,
      ),
      body: Column(
        children: [
          Menu(
              currentIndex: currentIndex,
              screenModel: screenModel
          ),

          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    header,

                    // body에만 패딩적용
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: contents
                    ),

                    footer,
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
