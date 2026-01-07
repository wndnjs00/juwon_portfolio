import 'package:flutter/cupertino.dart';

import '../model/screen_model.dart';

typedef MyBuilder =
    Widget Function(
      ScreenModel screenModel,
      bool web,
      bool tablet,
      bool mobile,
    );

const double _webWidth = 1920;
const double _tabletWidth = 1024;
const double _mobileWidth = 768;

class ScreenLayoutBuilder extends StatelessWidget {
  const ScreenLayoutBuilder({required this.myBuilder, super.key});

  final MyBuilder myBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        bool web = false;
        bool tablet = false;
        bool mobile = false;
        
        if(constrains.maxWidth <= _mobileWidth){
          mobile = true;
        }else if (constrains.maxWidth <= _tabletWidth){
          tablet = true;
        }else{
          web = true;
        }
        return myBuilder(ScreenModel(web, tablet, mobile), web, tablet, mobile);
      },
    );
  }
}
