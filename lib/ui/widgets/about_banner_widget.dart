import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class AboutBannerWidget extends StatelessWidget {
  const AboutBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image.asset(
                'assets/images/team_banner.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withAlpha((0.4 * 255).toInt()),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Meet Our Team',
                      style: AppTextStyles.heading1.copyWith(
                        color: AppColors.snowWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'A passionate group of creatives and developers\ncrafting digital experiences with purpose.',
                      style: AppTextStyles.body.copyWith(
                        color: AppColors.primaryLight,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
