import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/route_page.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioDetaiTemplate extends StatelessWidget {
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

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    _circleIcon(icon1Image, icon1Url),
                    const SizedBox(width: 12),
                    _circleIcon(icon2Image, icon2Url),
                  ],
                ),
                const SizedBox(height: 40),

                _sectionTitle("개요"),
                const SizedBox(height: 8),
                _description(overview),
                const SizedBox(height: 40),

                Row(
                  children: [
                    Expanded(child: _infoBlock("기간", period)),
                    Expanded(child: _infoBlock("인원", people)),
                  ],
                ),
                const SizedBox(height: 40),

                _sectionTitle("기여와 성과"),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: contributions
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
                  children: const [
                    CustomStackChip(
                      text: "JavaScript",
                      backgroundColor: MyColor.tagGreen,
                      textColor: Colors.black,
                    ),
                    CustomStackChip(
                      text: "Kotlin",
                      backgroundColor: MyColor.tagOrange,
                      textColor: Colors.black,
                    ),
                    CustomStackChip(
                      text: "Jetpack",
                      backgroundColor: MyColor.tagPink,
                      textColor: Colors.black,
                    ),
                    CustomStackChip(
                      text: "JavaScript",
                      backgroundColor: MyColor.tagPurple,
                      textColor: Colors.black,
                    ),
                    CustomStackChip(
                      text: "JavaScript",
                      backgroundColor: MyColor.tagYellow,
                      textColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 50),

                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1100),
                    child: SizedBox(
                      height: 600,
                      child: PageView(
                        children: imagePaths.map((path) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
      style: TextStyle(fontSize: 14, height: 1.6, color: Colors.grey.shade700),
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
            fontSize: 14,
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
