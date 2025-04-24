import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Us',
                  style: AppTextStyles.heading1.copyWith(color: AppColors.primary),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'We are committed to creating eco-friendly and sustainable shopping solutions. Our brand represents quality, innovation, and environmental responsibility.',
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To lead the way in eco-conscious commerce by offering products that are both stylish and environmentally responsible.',
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
