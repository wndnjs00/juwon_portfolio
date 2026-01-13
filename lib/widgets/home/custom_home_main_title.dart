import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/custom_text_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:juwon_portfolio/util/asset_path.dart';

class CustomHomeMainTitle extends StatelessWidget {
  const CustomHomeMainTitle({
    required this.title,
    required this.subTitle,
    this.showActionButton = false,
    super.key,
  });

  final String title;
  final String subTitle;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextUtil.get20(
            context,
            Colors.black,
          ).copyWith(fontWeight: FontWeight.bold, fontSize: 32),
        ),
        const SizedBox(height: 8),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextUtil.get15(
            context,
            Colors.black,
          ).copyWith(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        if (showActionButton) ...[
          const SizedBox(height: 15),
          CustomTextButton(
            text: "PDF 다운로드",
            textStyle: TextUtil.get15(context, Colors.white),
            size: Size(130, 40),
            backgroundColor: MyColor.primaryBlue,
            onPressed: () async {
              await _openPortfolioPdf(context);
            },
          ),
        ],
      ],
    );
  }

  Future<void> _openPortfolioPdf(BuildContext context) async {
    // Web에서는 빌드된 정적 리소스가 /assets/... 에 위치하지만,
    // 브라우저에서는 상대경로 "assets/..." 로 여는 편이 안전하다.
    // (선행 슬래시가 있으면 로컬호스트/도메인 루트 기준으로만 탐색해 canLaunch 실패 가능)
    final uri = Uri.parse('assets/portfolio.pdf');

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('PDF 파일을 열 수 없습니다. assets 경로와 파일 존재 여부를 확인해주세요.')),
    );
  }
}
