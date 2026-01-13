import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioDetaiTemplate extends StatefulWidget {
  const PortfolioDetaiTemplate({
    required this.title,
    required this.overview,
    required this.period,
    required this.people,
    required this.contributions,
    required this.imagePaths,
    required this.icon1Image,
    required this.icon1Url,
    required this.icon2Image,
    required this.icon2Url,
    required this.techStacks,
    this.showIcon1 = true,
    super.key,
  });

  final String title;
  final String overview;
  final String period;
  final String people;
  final List<String> contributions;
  final List<String> imagePaths;
  final String icon1Image;
  final String icon1Url;
  final String icon2Image;
  final String icon2Url;
  final List<CustomStackChip> techStacks;
  final bool showIcon1;

  @override
  State<PortfolioDetaiTemplate> createState() => _PortfolioDetaiTemplateState();
}

class _PortfolioDetaiTemplateState extends State<PortfolioDetaiTemplate> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close, size: 28),
                    onPressed: () => RoutePage.backPage(context),
                  ),
                ),
                const SizedBox(height: 12),
                Divider(color: Colors.grey.shade300, height: 2),
                const SizedBox(height: 24),

                // 타이틀 + 아이콘
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    if (widget.showIcon1) ...[
                      _circleIcon(widget.icon1Image, widget.icon1Url),
                      const SizedBox(width: 12),
                    ],
                    _circleIcon(widget.icon2Image, widget.icon2Url),
                  ],
                ),
                const SizedBox(height: 40),

                _sectionTitle("개요"),
                const SizedBox(height: 8),
                _description(widget.overview),
                const SizedBox(height: 40),

                Row(
                  children: [
                    Expanded(child: _infoBlock("기간", widget.period)),
                    Expanded(child: _infoBlock("인원", widget.people)),
                  ],
                ),
                const SizedBox(height: 40),

                _sectionTitle("주요기능"),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.contributions
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('•  '),
                              Expanded(child: Text(e)),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),

                const SizedBox(height: 40),

                _sectionTitle("기술 스택"),
                const SizedBox(height: 12),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: widget.techStacks,
                ),
                const SizedBox(height: 50),

                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1100),
                    child: SizedBox(
                      height: 800,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: PageView(
                              controller: _pageController,
                              onPageChanged: (index) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              children: widget.imagePaths.map((path) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      path,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),

                          // 왼쪽 화살표 (0번째면 숨김)
                          if (_currentIndex != 0)
                            Positioned(
                              left: 0,
                              top: 0,
                              bottom: 0,
                              child: Center(
                                child: Material(
                                  color: Colors.transparent,
                                  shape: const CircleBorder(),
                                  child: InkWell(
                                    customBorder: const CircleBorder(),
                                    onTap: () {
                                      _pageController.animateToPage(
                                        _currentIndex - 1,
                                        duration: const Duration(
                                          microseconds: 200,
                                        ),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.keyboard_arrow_left_rounded,
                                        size: 48,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          // 오른쪽 화살표 (마지막이면 숨김)
                          if (_currentIndex != widget.imagePaths.length - 1)
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Center(
                                child: Material(
                                  color: Colors.transparent,
                                  shape: const CircleBorder(),
                                  child: InkWell(
                                    customBorder: const CircleBorder(),
                                    onTap: () {
                                      _pageController.animateToPage(
                                        _currentIndex + 1,
                                        duration: const Duration(
                                          microseconds: 200,
                                        ),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        size: 48,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, height: 1.6, fontWeight: FontWeight.bold),
    );
  }

  Widget _description(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 15, height: 1.6, color: Colors.grey.shade700),
    );
  }

  Widget _infoBlock(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }

  Widget _circleIcon(String imagePath, String url) {
    return GestureDetector(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
