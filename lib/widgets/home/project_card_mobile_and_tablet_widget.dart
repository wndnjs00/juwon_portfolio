import 'package:flutter/material.dart';

import '../../util/asset_path.dart';
import '../../util/text_util.dart';
import 'custom_android_github_btn.dart';
import 'custom_stack_chip.dart';

class ProjectCardMobileAndTabletWidget extends StatelessWidget {
  const ProjectCardMobileAndTabletWidget({
    required this.title,
    required this.description,
    required this.customStackChip,
    required this.androidUrl,
    required this.githubUrl,
    required this.imagePath,
    super.key,
  });

  final String title;
  final String description;
  final List<CustomStackChip> customStackChip;
  final String androidUrl;
  final String githubUrl;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: customStackChip,
        ),
        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAndroidGithubBtn(
              text: "Android 앱",
              url: androidUrl,
              iconPath: AssetPath.androidImage2,
            ),
            const SizedBox(width: 10),
            CustomAndroidGithubBtn(
              text: "GitHub",
              url: githubUrl,
              iconPath: AssetPath.githubImage2,
            ),
          ],
        ),

        const SizedBox(height: 20),

        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
