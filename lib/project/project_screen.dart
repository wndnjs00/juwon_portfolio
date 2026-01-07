import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';
import 'package:juwon_portfolio/widgets/page_drawer.dart';
import 'package:juwon_portfolio/widgets/screen_layout_builder.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(myBuilder: (screenModel, web, tablet, mobile){
      return Scaffold(
        endDrawer: PageDrawer(currentIndex: 2, tablet: tablet),
        body: Column(
          children: [
            Menu(currentIndex: 2, screenModel: screenModel)
          ],
        ),
      );
    });
  }
}
