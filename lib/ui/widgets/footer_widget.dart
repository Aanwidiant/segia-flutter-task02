import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryDark,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: [
          Text(
            'Follow us on social media',
            style: AppTextStyles.body.copyWith(color: AppColors.snowWhite),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIcon('assets/images/instagram.png', () {}),
              const SizedBox(width: 20),
              _SocialIcon('assets/images/x.png', () {}),
              const SizedBox(width: 20),
              _SocialIcon('assets/images/tiktok.png', () {}),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String assetPath;
  final VoidCallback onTap;

  const _SocialIcon(this.assetPath, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.snowWhite,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          assetPath,
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
