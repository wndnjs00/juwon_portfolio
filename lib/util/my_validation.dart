class MyValidation{
  static bool isEmail(String text){
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,4}$',
    );
    return emailRegExp.hasMatch(text);
  }

  static bool questionTitle(String text) => text.length >= 3;

  static bool questionName(String text) => text.length >= 2;

  static bool questionContent(String text) => text.length >= 10;

}