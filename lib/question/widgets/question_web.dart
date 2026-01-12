import 'package:flutter/material.dart';
import 'package:juwon_portfolio/question/widgets/question_widgets.dart';
import 'package:juwon_portfolio/util/firestore_service.dart';
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
          // TODO: 문의뱓기 구현할때, 주석제거하고 null을 제거하기
          onPressed: null, // 일시적으로 문의 기능 비활성화
          // onPressed: !qUtil.checkValidation() ? null : () async {
          //   await _submitInquiry(context, qUtil);
          // },
        ),
        const SizedBox(height: 100)
      ],
    );
  }

  Future<void> _submitInquiry(BuildContext context, QuestionUtil qUtil) async {
    // 로딩 다이얼로그 표시
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      // 서비스 선택 값 가져오기
      final serviceList = ["웹(Flutter-Web)", "앱(App)"];
      final selectedService = serviceList[qUtil.questionTypeIndex];

      // Firestore에 저장
      await FirestoreService.saveInquiry(
        title: qUtil.titleController.text,
        name: qUtil.nameController.text,
        email: qUtil.emailController.text,
        content: qUtil.contentController.text,
        service: selectedService,
      );

      // 로딩 다이얼로그 닫기
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      // 성공 메시지 표시
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('문의가 성공적으로 전송되었습니다.'),
            backgroundColor: MyColor.primaryBlue,
            duration: Duration(seconds: 2),
          ),
        );
      }

      // 폼 초기화
      qUtil.clear();
      if (context.mounted) {
        setState(() {});
      }
    } catch (e) {
      // 로딩 다이얼로그 닫기
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      // 에러 메시지 표시
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('문의 전송 중 오류가 발생했습니다: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }
}
