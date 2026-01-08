import 'package:flutter/material.dart';
import 'package:juwon_portfolio/model/screen_model.dart';

import '../../util/my_color.dart';

class QuestionSubtitle extends StatelessWidget {
  const QuestionSubtitle({
    required this.screenModel,
    super.key
  });

  final ScreenModel screenModel;

  @override
  Widget build(BuildContext context) {

    var text1 = Text(
      "문의하기",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );

    var text2 = Text(
      "* 표시가 있는 필수 항목을 모두 기입해주세요.",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: MyColor.gray40,
      ),
    );

    if(screenModel.mobile){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          text1,
          const SizedBox(height: 5),
          text2
        ],
      );
    }

    return Padding(
        padding: EdgeInsets.only(top: 96),
      child: Row(
        children: [
          text1,
          const SizedBox(width: 16),
          text2,
        ],
      ),
    );
  }
}
