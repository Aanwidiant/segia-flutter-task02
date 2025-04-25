import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class ProductHighlightWidget extends StatelessWidget {
  const ProductHighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _ProductItem(
          imagePath: 'assets/images/product_1.jpg',
          title: 'Paper Bag',
          description: 'Stylish and eco-friendly paper bag for daily use.',
          isImageLeft: true,
        ),
        _ProductItem(
          imagePath: 'assets/images/product_2.jpg',
          title: 'Tote Bag',
          description: 'Spacious and reusable tote bag for daily essentials.',
          isImageLeft: false,
        ),
        _ProductItem(
          imagePath: 'assets/images/product_3.jpg',
          title: 'Barrel Bag',
          description: 'Compact and sporty barrel bag for quick trips.',
          isImageLeft: true,
        ),
      ],
    );
  }
}

class _ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isImageLeft;

  const _ProductItem({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.isImageLeft,
  });

  @override
  Widget build(BuildContext context) {
    final imageWidget = Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.asset(imagePath, fit: BoxFit.cover, height: 160),
      ),
    );

    final textWidget = Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment:
              isImageLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: AppTextStyles.heading1.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: AppTextStyles.body.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: isImageLeft ? TextAlign.start : TextAlign.end,
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment:
                  isImageLeft ? Alignment.centerLeft : Alignment.centerRight,
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Row(
        children:
            isImageLeft ? [imageWidget, textWidget] : [textWidget, imageWidget],
      ),
    );
  }
}
