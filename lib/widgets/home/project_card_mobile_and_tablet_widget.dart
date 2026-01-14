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
    this.showGithubBtn = true,
    this.showAndroidBtn = true,
    super.key,
  });

  final String title;
  final String description;
  final List<CustomStackChip> customStackChip;
  final String androidUrl;
  final String githubUrl;
  final String imagePath;
  final bool showGithubBtn;
  final bool showAndroidBtn;

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

        if (showGithubBtn || showAndroidBtn) ...[
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (showGithubBtn) ...[
                CustomAndroidGithubBtn(
                  text: "GitHub",
                  url: githubUrl,
                  iconPath: AssetPath.githubImage2,
                ),
                if (showAndroidBtn) const SizedBox(width: 10),
              ],
              if (showAndroidBtn)
                CustomAndroidGithubBtn(
                  text: "Android 앱",
                  url: androidUrl,
                  iconPath: AssetPath.androidImage2,
                ),
            ],
          ),
        ],

        const SizedBox(height: 20),

        // 주요 프로젝트 스크린샷은 항상 동일한 비율(대략 5:3)을 유지하면서,
        // 최대 500px 너비 안에서만 표시되도록 고정
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500, // 웹/태블릿/모바일 모두 공통 최대 너비
            ),
            child: AspectRatio(
              aspectRatio: 5 / 3, // 500x300 과 유사한 비율
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
