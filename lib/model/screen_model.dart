class ScreenModel{
  bool web;
  bool tablet;
  bool mobile;

  ScreenModel(this.web, this.tablet, this.mobile);

  @override
  String toString(){
    return 'ScreenModel{web: $web, tablet: $tablet, mobile: $mobile}';
  }
}