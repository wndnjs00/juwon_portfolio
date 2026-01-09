import 'package:flutter/material.dart';
import 'package:juwon_portfolio/question/widgets/question_widgets.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/question_util.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/custom_text_button.dart';

class QuestionWeb extends StatefulWidget {
  const QuestionWeb({super.key});

  @override
  State<QuestionWeb> createState() => _QuestionWebState();
}

class _QuestionWebState extends State<QuestionWeb> {
  final qUtil = QuestionUtil();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: QuestionWidgets.formFieldBox(
                context: context,
                web: true,
                text: "문의 제목 *",
                controller: qUtil.titleController,
                textInputType: TextInputType.text,
                hintText: "문의 제목을 입력해주세요",
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: QuestionWidgets.dropDownBox(
                context: context,
                web: true,
                text: "서비스 선택 *",
                textList: ["웹(Flutter-Web)", "앱(App)"],
                selectedIndex: qUtil.questionTypeIndex,
                onChanged: (index) {
                  qUtil.changeQuestionType(index);
                  setState(() {});
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: QuestionWidgets.formFieldBox(
                context: context,
                web: true,
                text: "이름 *",
                controller: qUtil.nameController,
                textInputType: TextInputType.text,
                hintText: "이름을 입력해주세요",
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: QuestionWidgets.formFieldBox(
                context: context,
                web: true,
                text: "이메일 *",
                controller: qUtil.emailController,
                textInputType: TextInputType.text,
                hintText: "회신받을 이메일을 남겨주세요",
              ),
            ),
          ],
        ),

        const SizedBox(height: 25),
        QuestionWidgets.contentBox(context, true, qUtil.contentController),
        const SizedBox(height: 40),
        CustomTextButton(
          text: "문의하기",
          textStyle: TextUtil.get16(context, Colors.white),
          size: Size(double.infinity, 56),
          backgroundColor: MyColor.primaryBlue,
          radius: 0,
          onPressed: !qUtil.checkValidation() ? null : (){},
        ),
        const SizedBox(height: 100)
      ],
    );
  }
}
