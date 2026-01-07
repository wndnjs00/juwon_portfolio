import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:juwon_portfolio/home/home_screen.dart';
import 'package:juwon_portfolio/question/question_screen.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';

void main() {
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
            RoutePage.question: (context, state, data){
              return const BeamPage(
                key: ValueKey("question"),
                title:"Question",
                child: QuestionScreen(),
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
        fontFamily: "pretendard"
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}