import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/screen_padding.dart';
import 'package:juwon_portfolio/widgets/home/custom_home_main_title.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/home/project_card_widget.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';
import 'package:juwon_portfolio/widgets/util/common_scaffold.dart';
import 'package:juwon_portfolio/widgets/footer/footer.dart';
import 'package:juwon_portfolio/widgets/header/header.dart';
import 'package:juwon_portfolio/widgets/util/screen_layout_builder.dart';

import '../util/asset_path.dart';
import '../util/my_color.dart';
import '../widgets/home/custom_skill_card_widget.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({
    this.scrollTo,
    super.key,
  });

  final String? scrollTo;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _technicalSkillsKey = GlobalKey();
  final GlobalKey _featuredProjectsKey = GlobalKey();
  final GlobalKey _project1Key = GlobalKey();
  final GlobalKey _project2Key = GlobalKey();
  final GlobalKey _project3Key = GlobalKey();
  final GlobalKey _project4Key = GlobalKey();
  final GlobalKey _project5Key = GlobalKey();
  String? _lastScrollTo;

  @override
  void initState() {
    super.initState();
    _lastScrollTo = widget.scrollTo;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkScrollParameter();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 위젯이 재생성되었을 때 스크롤 파라미터 확인
    if (_lastScrollTo != widget.scrollTo) {
      _lastScrollTo = widget.scrollTo;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _checkScrollParameter();
      });
    }
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollTo != widget.scrollTo) {
      _lastScrollTo = widget.scrollTo;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _checkScrollParameter();
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayoutBuilder(
        myBuilder: (screenModel, web, tablet, mobile){
          var width = MediaQuery.of(context).size.width;

      return CommonScaffold(
          currentIndex: _getCurrentIndex(),
          screenModel: screenModel,
          horizontalPadding: ScreenPadding.get(web, width),
          scrollController: _scrollController,

          header: Header(
              title: "전주원",
              subTitle: "사용자 중심의 가치있는 코드를 만드는 앱개발자 입니다.\n새로운 기술을 빠르게 습득하고, 이를 통해 더 나은 사용자 경험을 제공하는것을 목표로 합니다.",
              developerTitle: "Android Developer",
              screenModel: screenModel
          ),

        contents: Column(
          children: [
            SizedBox(height: 50),
            CustomHomeMainTitle(
              key: _technicalSkillsKey,
              title: "Technical Skills",
              subTitle: "프로젝트에서 활용한 주요 기술스택입니다.",
              showActionButton: false,
            ),

            const SizedBox(height: 40),

            if (web) ...[
              // Skill Card
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 80,
                runSpacing: 10,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.kotlinImage,
                      skillTitle: "Kotlin"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.javaImage,
                      skillTitle: "Java"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.flutterImage,
                      skillTitle: "Flutter"
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 80,
                runSpacing: 10,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.dartImage,
                      skillTitle: "Dart"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.androidImage2,
                      skillTitle: "Android"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.springBootImage,
                      skillTitle: "Spring Boot"
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 80,
                runSpacing: 10,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.firebaseImage,
                      skillTitle: "Firebase"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.mysqlImage,
                      skillTitle: "MySQL"
                  ),
                  CustomSkillCardWidget(
                    imagePath: null,
                    skillTitle: "",
                    color: Colors.transparent,
                    borderColor: Colors.transparent,
                    enableHover: false,
                  ),
                ],
              ),
            ]else...[
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 60,
                runSpacing: 20,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.kotlinImage,
                      skillTitle: "Kotlin"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.javaImage,
                      skillTitle: "Java"
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 60,
                runSpacing: 20,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.flutterImage,
                      skillTitle: "Flutter"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.dartImage,
                      skillTitle: "Dart"
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 60,
                runSpacing: 20,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.androidImage2,
                      skillTitle: "Android"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.springBootImage,
                      skillTitle: "Spring Boot"
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 60,
                runSpacing: 20,
                children: [
                  CustomSkillCardWidget(
                      imagePath: AssetPath.firebaseImage,
                      skillTitle: "Firebase"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.mysqlImage,
                      skillTitle: "MySQL"
                  ),
                ],
              ),
            ],

            const SizedBox(height: 100),
            CustomHomeMainTitle(
              key: _featuredProjectsKey,
              title: "Featured Projects",
              subTitle: "주요 프로젝트를 소개합니다",
              showActionButton: true,
            ),
            const SizedBox(height: 40),
            // 프로젝트
            ProjectCardWidget(
                key: _project1Key,
                title: "지키미",
                description: "재난발생시, 주변 대피소 정보를 한눈에 확인할 수 있는 안전지킴이 앱",
                imagePath: AssetPath.project1,
                customStackChip: const [
                  CustomStackChip(
                    text: "Android",
                    backgroundColor: MyColor.tagPink,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                      text: "Kotlin",
                      backgroundColor: MyColor.tagPink,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                      text: "MVVM Pattern",
                      backgroundColor: MyColor.tagPurple,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Retrofit2",
                    backgroundColor: MyColor.tagYellow,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Okhttp3",
                    backgroundColor: MyColor.tagYellow,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "RoomDB",
                    backgroundColor: MyColor.tagOrange,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Firebase",
                    backgroundColor: MyColor.tagOrange,
                    textColor: Colors.black,
                  ),
                ],
                androidUrl: "https://play.google.com/store/apps/details?id=com.myapp.jikimi",
                githubUrl: "https://github.com/wndnjs00/jikimi",
                isWeb: web,
                onTap: () {
                  RoutePage.movePage(context, RoutePage.portfolioDetail1);
                },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
                key: _project2Key,
                title: "맛고",
                description: "지역별 특산물을 활용한 요리레시피 제공앱",
                imagePath: AssetPath.project2,
                customStackChip: const [
                  CustomStackChip(
                    text: "Android",
                    backgroundColor: MyColor.tagPink,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Kotlin",
                    backgroundColor: MyColor.tagPink,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "MVVM Pattern",
                    backgroundColor: MyColor.tagPurple,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Retrofit2",
                    backgroundColor: MyColor.tagYellow,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Okhttp3",
                    backgroundColor: MyColor.tagYellow,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "RoomDB",
                    backgroundColor: MyColor.tagOrange,
                    textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "Firebase",
                    backgroundColor: MyColor.tagOrange,
                    textColor: Colors.black,
                  ),
                ],
                androidUrl: "https://play.google.com/store/apps/details?id=nbc.group.recipes",
                githubUrl: "https://github.com/nbc-group-4/recipe",
                isWeb: web,
                onTap: () {
                  RoutePage.movePage(context, RoutePage.portfolioDetail2);
                },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
              key: _project3Key,
              title: "readway",
              description: "손쉽게 기록하는 독서기록 앱",
              imagePath: AssetPath.project3,
              customStackChip: const [
                CustomStackChip(
                  text: "Flutter",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Dart",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "MVVM Pattern",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Riverpod",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Firebase",
                  backgroundColor: MyColor.tagOrange,
                  textColor: Colors.black,
                ),
              ],
              androidUrl: "",
              githubUrl: "https://github.com/wndnjs00/readway",
              isWeb: web,
              showAndroidBtn: false,
              onTap: () {
                RoutePage.movePage(context, RoutePage.portfolioDetail3);
              },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
              key: _project4Key,
              title: "MiniYoutube",
              description: "카테고리별로 모아보는 나만의 MiniYoutube 앱",
              imagePath: AssetPath.project4,
              customStackChip: const [
                CustomStackChip(
                  text: "Android",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Kotlin",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "MVVM Pattern",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Retrofit2",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Okhttp3",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "RoomDB",
                  backgroundColor: MyColor.tagOrange,
                  textColor: Colors.black,
                ),
              ],
              androidUrl: "",
              githubUrl: "https://github.com/wndnjs00/MiniYouTube",
              isWeb: web,
              showAndroidBtn: false,
              onTap: () {
                RoutePage.movePage(context, RoutePage.portfolioDetail4);
              },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
              key: _project5Key,
              title: "WaterLog [제작중]",
              description: "꾸준한 물섭취를 위한, 물섭취 기록앱",
              imagePath: AssetPath.project5,
              customStackChip: const [
                CustomStackChip(
                  text: "Android",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Kotlin",
                  backgroundColor: MyColor.tagPink,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Compose",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "MVVM Pattern",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Retrofit2",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Okhttp3",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "Firebase",
                  backgroundColor: MyColor.tagOrange,
                  textColor: Colors.black,
                ),
              ],
              androidUrl: "",
              githubUrl: "",
              isWeb: web,
              showAndroidBtn: false,
              showGithubBtn: false,
              onTap: () {},
            ),
            const SizedBox(height: 60),
          ],
        ),

          footer: const Footer(
              title: "전주원",
              subTitle: "Android Developer"
          ),
      );
    });
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  int _getCurrentIndex() {
    final scrollTo = widget.scrollTo;
    if (scrollTo == 'skills') {
      return 1; // 기술스택
    } else if (scrollTo == 'projects') {
      return 2; // 프로젝트
    }
    return 0; // 홈
  }

  void _checkScrollParameter() {
    final scrollTo = widget.scrollTo ?? _lastScrollTo;

    if (scrollTo == 'skills') {
      _scrollToSection(_technicalSkillsKey);
    } else if (scrollTo == 'projects') {
      _scrollToSection(_featuredProjectsKey);
    } else if (scrollTo == 'project1') {
      _scrollToSection(_project1Key);
    } else if (scrollTo == 'project2') {
      _scrollToSection(_project2Key);
    } else if (scrollTo == 'project3') {
      _scrollToSection(_project3Key);
    } else if (scrollTo == 'project4') {
      _scrollToSection(_project4Key);
    } else if (scrollTo == 'project5') {
      _scrollToSection(_project5Key);
    }
  }

}
