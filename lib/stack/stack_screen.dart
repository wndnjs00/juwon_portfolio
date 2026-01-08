import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/menu/page_drawer.dart';

import '../widgets/util/screen_layout_builder.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(myBuilder: (screenModel, web, tablet, mobile){
      return Scaffold(
        endDrawer: PageDrawer(currentIndex: 1, tablet: tablet),
        body: Column(
          children: [
            Menu(currentIndex: 1, screenModel: screenModel)
          ],
        ),
      );
    });
  }
}