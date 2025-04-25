import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class ProductSectionWidget extends StatelessWidget {
  const ProductSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/product_1.jpg',
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Papper Bag',
                  style: AppTextStyles.heading1.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'This papper bag is perfect for your daily shopping needs. '
                  'Made from recyclable materials and designed with both style and sustainability in mind.',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    print('View Details clicked!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'View Details',
                    style: TextStyle(color: AppColors.snowWhite),
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
