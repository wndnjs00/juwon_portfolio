class ScreenPadding{
  static double get(bool web, double screenWidth){
    if(web){
      if(screenWidth > 1920) return 320;
      var padding = screenWidth * 0.16;
      if(padding <= 80) return 80;
      return padding;
    }
    return 16;
  }
}