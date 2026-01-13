import 'package:flutter/cupertino.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';

class MenuUtil{
  static final List<String> menuList = ["홈", "기술스택", "프로젝트", "문의하기"];
  static final List<String> projectList = ["지키미", "맛고", "readway", "MiniYoutube", "WaterLog"];

  static void changeIndex(BuildContext context, int index){

    String routeName = "";

    switch(index){
      case 0:
        routeName = RoutePage.home;
        break;
      case 1:
        // 기술스택 클릭 시 홈으로 이동하고 스크롤 파라미터 추가
        routeName = "${RoutePage.home}?scroll=skills";
        break;
      case 2:
        // 프로젝트 클릭 시 홈으로 이동하고 스크롤 파라미터 추가
        routeName = "${RoutePage.home}?scroll=projects";
        break;
      case 3:
        routeName = RoutePage.question;
        break;
    }

    RoutePage.movePage(context, routeName);
  }

  static void scrollToProject(BuildContext context, int projectIndex) {
    // 프로젝트 인덱스는 0부터 시작하지만, 쿼리 파라미터는 1부터 시작
    final routeName = "${RoutePage.home}?scroll=project${projectIndex + 1}";
    RoutePage.movePage(context, routeName);
  }
}