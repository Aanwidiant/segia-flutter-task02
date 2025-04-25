import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';

class CompanyHistoryWidget extends StatelessWidget {
  const CompanyHistoryWidget({super.key});

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
                  'Our History',
                  style: AppTextStyles.heading1.copyWith(
                    color: AppColors.primaryDark,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Founded in 2010, our company started with a mission to create stylish, durable, and functional bags for everyday use. Over the years, we have grown to become a leading brand in the bag manufacturing industry.',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.textSecondary,
                  ),
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
                  'With a passion for quality craftsmanship and customer satisfaction, we now offer a wide variety of bags that cater to every need, from casual to professional settings.',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
