import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/home/custom_android_github_btn.dart';
import 'package:juwon_portfolio/widgets/home/custom_stack_chip.dart';
import 'package:juwon_portfolio/widgets/home/project_card_mobile_and_tablet_widget.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.customStackChip,
    required this.androidUrl,
    required this.githubUrl,
    required this.isWeb,
    super.key,
  });

  final String title;
  final String description;
  final String imagePath;
  final List<CustomStackChip> customStackChip;
  final String androidUrl;
  final String githubUrl;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // 카드 클릭 시 동작
          debugPrint('Project Card Clicked: $title');
        },
        child: Container(
          width: isWeb ? 750 : double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: isWeb
            ? Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextUtil.get20(
                        context,
                        Colors.black,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: TextUtil.get14(
                        context,
                        Colors.black,
                      ).copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 14),

                    Wrap(spacing: 8, runSpacing: 8, children: customStackChip),

                    const SizedBox(height: 16),

                    Row(
                      children: [
                        CustomAndroidGithubBtn(
                          text: "Android 앱",
                          url: androidUrl,
                          iconPath: AssetPath.officeImage,
                        ),
                        const SizedBox(width: 10),
                        CustomAndroidGithubBtn(
                          text: "GitHub",
                          url: androidUrl,
                          iconPath: AssetPath.officeImage,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: 300,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
              : ProjectCardMobileAndTabletWidget(
              title: title,
              description: description,
              customStackChip: customStackChip,
              androidUrl: androidUrl,
              githubUrl: githubUrl,
              imagePath: imagePath
          )
        ),
      ),
    );
  }
}
