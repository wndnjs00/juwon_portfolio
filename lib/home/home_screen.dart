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
              title: "이승현",
              subTitle: "Flutter와 React를 중심으로 빠른 UX와 견고한 구조를 설계하는 프론트엔드 개발자입니다.\n항상 열정적으로 임하며, 어떤 도전에도 긍정적인 태도로 임합니다.",
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Kotlin"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Java"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Dart"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Android"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Firebase"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Kotlin"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Flutter"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Android"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                      imagePath: AssetPath.officeImage,
                      skillTitle: "Firebase"
                  ),
                  CustomSkillCardWidget(
                      imagePath: AssetPath.officeImage,
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
                title: "프로젝트 이름1",
                description: "React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.",
                imagePath: AssetPath.officeImage,
                customStackChip: const [
                  CustomStackChip(
                      text: "TypeScript",
                      backgroundColor: MyColor.tagYellow,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                      text: "React",
                      backgroundColor: MyColor.tagPurple,
                      textColor: Colors.black,
                  ),
                ],
                androidUrl: "",
                githubUrl: "",
                isWeb: web,
                onTap: () {
                  RoutePage.movePage(context, RoutePage.portfolioDetail1);
                },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
                key: _project2Key,
                title: "프로젝트 이름2",
                description: "React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.",
                imagePath: AssetPath.officeImage,
                customStackChip: const [
                  CustomStackChip(
                      text: "TypeScript",
                      backgroundColor: MyColor.tagYellow,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                      text: "React",
                      backgroundColor: MyColor.tagPurple,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                      text: "React",
                      backgroundColor: MyColor.tagPurple,
                      textColor: Colors.black,
                  ),
                  CustomStackChip(
                    text: "React",
                    backgroundColor: MyColor.tagPurple,
                    textColor: Colors.black,
                  ),
                ],
                androidUrl: "",
                githubUrl: "",
                isWeb: web,
                onTap: () {
                  RoutePage.movePage(context, RoutePage.portfolioDetail2);
                },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
              key: _project3Key,
              title: "프로젝트 이름3",
              description: "React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.",
              imagePath: AssetPath.officeImage,
              customStackChip: const [
                CustomStackChip(
                  text: "TypeScript",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "React",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
              ],
              androidUrl: "",
              githubUrl: "",
              isWeb: web,
              onTap: () {
                RoutePage.movePage(context, RoutePage.portfolioDetail3);
              },
            ),
            const SizedBox(height: 20),
            ProjectCardWidget(
              key: _project4Key,
              title: "프로젝트 이름4",
              description: "React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.React 앱의 서버사이드 렌더링에서 사용할 수 있는 라이브러리입니다.",
              imagePath: AssetPath.officeImage,
              customStackChip: const [
                CustomStackChip(
                  text: "TypeScript",
                  backgroundColor: MyColor.tagYellow,
                  textColor: Colors.black,
                ),
                CustomStackChip(
                  text: "React",
                  backgroundColor: MyColor.tagPurple,
                  textColor: Colors.black,
                ),
              ],
              androidUrl: "",
              githubUrl: "",
              isWeb: web,
              onTap: () {
                RoutePage.movePage(context, RoutePage.portfolioDetail4);
              },
            ),
            const SizedBox(height: 60),
          ],
        ),

          footer: const Footer(
              title: "이승현",
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
    }
  }

}
