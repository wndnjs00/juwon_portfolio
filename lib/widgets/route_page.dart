import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class RoutePage{

  static const home = "/";
  static const stack = "/stack";
  static const project = "/project";
  static const question = "/question";
  static const portfolioDetail1 = "/portfolio_detail1";
  static const portfolioDetail2 = "/portfolio_detail2";
  static const portfolioDetail3 = "/portfolio_detail3";
  static const portfolioDetail4 = "/portfolio_detail4";

  static movePage(BuildContext context, String routeName){
    context.beamToNamed(routeName);
  }

  static backPage(BuildContext context){
    context.beamBack();
  }
}