import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:juwon_portfolio/home/home_screen.dart';
import 'package:juwon_portfolio/project/project_screen.dart';
import 'package:juwon_portfolio/question/question_screen.dart';
import 'package:juwon_portfolio/stack/stack_screen.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detail_screen1.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detail_screen2.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detail_screen3.dart';
import 'package:juwon_portfolio/widgets/home/portfolio_detail/portfolio_detail_screen4.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    transitionDelegate: const NoAnimationTransitionDelegate(),
      beamBackTransitionDelegate: const NoAnimationTransitionDelegate(),
      initialPath: RoutePage.home,
      notFoundRedirectNamed: RoutePage.home,
      locationBuilder: RoutesLocationBuilder(
          routes: {
            RoutePage.home: (context, state, data){
              return const BeamPage(
                key: ValueKey("home"),
                title:"Home",
                child: HomeScreen(),
              );
            },
            RoutePage.stack: (context, state, data){
              return const BeamPage(
                key: ValueKey("stack"),
                title:"Stack",
                child: StackScreen(),
              );
            },
            RoutePage.project: (context, state, data){
              return const BeamPage(
                key: ValueKey("project"),
                title:"Project",
                child: ProjectScreen(),
              );
            },
            RoutePage.question: (context, state, data){
              return const BeamPage(
                key: ValueKey("question"),
                title:"Question",
                child: QuestionScreen(),
              );
            },
            RoutePage.portfolioDetail1: (context, state, data){
              return const BeamPage(
                key: ValueKey("portfolioDetail1"),
                title:"PortfolioDetail1",
                child: PortfolioDetailScreen1(),
              );
            },
            RoutePage.portfolioDetail2: (context, state, data){
              return const BeamPage(
                key: ValueKey("portfolioDetail2"),
                title:"PortfolioDetail2",
                child: PortfolioDetailScreen2(),
              );
            },
            RoutePage.portfolioDetail3: (context, state, data){
              return const BeamPage(
                key: ValueKey("portfolioDetail3"),
                title:"PortfolioDetail3",
                child: PortfolioDetailScreen3(),
              );
            },
            RoutePage.portfolioDetail4: (context, state, data){
              return const BeamPage(
                key: ValueKey("portfolioDetail4"),
                title:"PortfolioDetail4",
                child: PortfolioDetailScreen4(),
              );
            },
          },
      ).call,
  );



  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Home 입니다',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade600),
        useMaterial3: true,
        textTheme: TextUtil.setTextTheme(),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
              if(states.contains(WidgetState.disabled)) return Colors.grey;
              return null;
            }),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((states){
              if(states.contains(WidgetState.disabled)) {
                return Colors.grey;
              }
              return null;
            })
          )
        ),
        fontFamily: "pretendard"
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}