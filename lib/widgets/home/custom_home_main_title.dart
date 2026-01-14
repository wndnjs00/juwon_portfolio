import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:juwon_portfolio/util/my_color.dart';
import 'package:juwon_portfolio/util/text_util.dart';
import 'package:juwon_portfolio/widgets/util/custom_text_button.dart';
import 'package:juwon_portfolio/util/asset_path.dart';
import 'dart:html' as html;

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

  // PDF다운로드 -> web과 moblile버전 따로설정
  Future<void> _openPortfolioPdf(BuildContext context) async {
    if (kIsWeb) {
      // Flutter Web: assets PDF 다운로드
      final pdfUrl = AssetPath.portfolioPdf;

      html.AnchorElement(href: pdfUrl)
        ..setAttribute('download', 'portfolio.pdf')
        ..click();

      return;
    }

    // Mobile (Android / iOS)
    final uri = Uri.parse(AssetPath.portfolioPdf);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('PDF 파일을 열 수 없습니다.'),
      ),
    );
  }

}
