import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class RoutePage{

  static const home = "/";
  static const stack = "/stack";
  static const project = "/project";
  static const question = "/question";

  static movePage(BuildContext context, String routeName){
    context.beamToNamed(routeName);
  }
}