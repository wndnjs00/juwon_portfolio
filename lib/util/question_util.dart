import 'package:flutter/cupertino.dart';

class QuestionUtil{
  static final QuestionUtil _singleton = QuestionUtil._();

  factory QuestionUtil() => _singleton;

  QuestionUtil._();

  var titleController = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var contentController = TextEditingController();

  int questionTypeIndex = 0;

  void changeQuestionType(int index) => questionTypeIndex = index;

  void initData(){
    titleController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    contentController = TextEditingController();
    questionTypeIndex = 0;
  }

  void clear(){
    titleController.text = "";
    nameController.text = "";
    emailController.text = "";
    contentController.text = "";
  }

  void dispose(){
    titleController.dispose();
    nameController.dispose();
    emailController.dispose();
    contentController.dispose();
  }
}