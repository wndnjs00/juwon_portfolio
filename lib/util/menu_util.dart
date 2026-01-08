import 'package:flutter/cupertino.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';

class MenuUtil{
  static final List<String> menuList = ["홈", "기술스택", "프로젝트", "문의하기"];
  static final List<String> projectList = ["프로젝트1", "프로젝트2", "프로젝트3", "프로젝트4","프로젝트5"];

  static void changeIndex(BuildContext context, int index){

    String routeName = "";

    switch(index){
      case 0:
        routeName = RoutePage.home;
        break;
      case 1:
        routeName = RoutePage.stack;
        break;
      case 2:
        routeName = RoutePage.project;
        break;
      case 3:
        routeName = RoutePage.question;
        break;
    }

    RoutePage.movePage(context, routeName);
  }
}