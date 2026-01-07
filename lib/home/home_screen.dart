import 'package:flutter/material.dart';
import 'package:juwon_portfolio/widgets/menu/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Menu(currentIndex: 0),
        ],
      ),
    );
  }
}
