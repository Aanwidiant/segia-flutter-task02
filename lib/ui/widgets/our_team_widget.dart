import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class OurTeamWidget extends StatelessWidget {
  const OurTeamWidget({super.key});

  Widget buildTeamMember({
    required String name,
    required String position,
    required String imagePath,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.heading2.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                position,
                style: AppTextStyles.body.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OUR TEAM',
            style: AppTextStyles.heading1.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: buildTeamMember(
                  name: 'Bob',
                  position: 'Head of Production',
                  imagePath: 'assets/images/team_1.jpg',
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: buildTeamMember(
                  name: 'Alice',
                  position: 'Product Designer',
                  imagePath: 'assets/images/team_2.jpg',
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: buildTeamMember(
                  name: 'Clara',
                  position: 'Marketing Specialist',
                  imagePath: 'assets/images/team_3.jpg',
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: buildTeamMember(
                  name: 'Diana',
                  position: 'Sales Manager',
                  imagePath: 'assets/images/team_4.jpg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
