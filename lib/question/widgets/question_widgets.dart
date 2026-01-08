import 'package:flutter/cupertino.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/question_contents/custom_dropdown_button.dart';
import 'package:juwon_portfolio/widgets/question_contents/custom_text_form_field.dart';

class QuestionWidgets {

  static Widget contentTitle(BuildContext context, bool web, String text) {
    TextStyle textStyle = TextUtil.get16(context, MyColor.gray40).copyWith();
    return Text(text, style: textStyle);
  }

  static Widget dropDownBox({
    required BuildContext context,
    required bool web,
    required String text,
    required List<String> textList,
    required int selectedIndex,
    required Function(int index) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contentTitle(context, web, text),
        const SizedBox(height: 4),
        CustomDropdownButton(
            textList: textList,
            height: 56,
            web: web,
            selectedIndex: selectedIndex,
            onChanged: onChanged
        )
      ],
    );
  }

  static Widget formFieldBox({
    required BuildContext context,
    required bool web,
    required String text,
    required TextEditingController controller,
    required TextInputType textInputType,
    required String hintText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contentTitle(context, web, text),
        const SizedBox(height: 4),
        Container(
          height: 56,
          child: CustomTextFormField(
              verticalPadding: 25,
              controller: controller,
              textInputType: textInputType,
              hintText: hintText
          ),
        )
      ],
    );
  }

  static Widget contentBox(BuildContext context, bool web,
      TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionWidgets.contentTitle(context, web, "문의 내용 *"),
        const SizedBox(height: 25),
        CustomTextFormField(
          controller: controller,
          textInputType: TextInputType.multiline,
          hintText: "문의 내용을 작성해주세요.\n문의 내용에 아래내용이 포함되면 더욱 빠르게 파악이 가능해요",
          maxLines: 12,
          textHeight: 1.5,
        )
      ],
    );
  }
}