import 'package:flutter/material.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAndroidGithubBtn extends StatelessWidget {
  const CustomAndroidGithubBtn({
    required this.text,
    required this.url,
    required this.iconPath,
    super.key
  });

  final String text;
  final String url;
  final String iconPath;

  Future<void> _launchUrl() async {
    final uri = Uri.parse(url);
    if(await canLaunchUrl(uri)){
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown, // 폭이 부족할 때 살짝 줄여 오버플로우 방지
      child: InkWell(
        onTap: _launchUrl,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                iconPath,
                width: 18,
                height: 18,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 6),
              Text(
                text,
                style: TextUtil.get14(context, Colors.black).copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
