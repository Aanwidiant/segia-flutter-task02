import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class NewsItem {
  final String image;
  final String title;
  final String description;

  NewsItem({
    required this.image,
    required this.title,
    required this.description,
  });
}

class NewsSectionWidget extends StatefulWidget {
  const NewsSectionWidget({super.key});

  @override
  State<NewsSectionWidget> createState() => _NewsSectionWidgetState();
}

class _NewsSectionWidgetState extends State<NewsSectionWidget> {
  bool _expanded = false;

  final List<NewsItem> _newsItems = [
    NewsItem(
      image: 'assets/images/product_1.jpg',
      title: 'Global Market Hits Record High',
      description:
          'Stocks surged today as investors reacted to stronger-than-expected earnings reports from major tech companies.',
    ),
    NewsItem(
      image: 'assets/images/product_2.jpg',
      title: 'Eco-Friendly Bags Trend Rising',
      description:
          'Sustainable materials in bag manufacturing are becoming increasingly popular among environmentally conscious consumers.',
    ),
    NewsItem(
      image: 'assets/images/product_3.jpg',
      title: 'Designer Collaboration Unveiled',
      description:
          'A leading fashion house has partnered with a renowned designer to launch an exclusive bag collection.',
    ),
    NewsItem(
      image: 'assets/images/product_4.jpg',
      title: 'Innovations in Bag Technology',
      description:
          'New smart bags with built-in charging ports and GPS tracking are hitting the market this season.',
    ),
    NewsItem(
      image: 'assets/images/product_5.jpg',
      title: 'Leather Prices on the Rise',
      description:
          'Global leather prices have increased due to supply chain disruptions and higher demand in luxury goods.',
    ),
    NewsItem(
      image: 'assets/images/product_6.jpg',
      title: 'Recycled Materials Gain Momentum',
      description:
          'Brands are incorporating recycled plastics and fabrics into their latest bag designs to reduce waste.',
    ),
    NewsItem(
      image: 'assets/images/product_7.jpg',
      title: 'Craftsmanship Awards 2025',
      description:
          'Top artisans in bag making were honored at this year’s craftsmanship awards ceremony.',
    ),
    NewsItem(
      image: 'assets/images/product_8.jpg',
      title: 'Tips for Bag Maintenance',
      description:
          'Experts share best practices for cleaning and storing your favorite bags to extend their lifespan.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final itemsToShow = _expanded ? _newsItems : _newsItems.take(4).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.6,
            ),
            itemCount: itemsToShow.length,
            itemBuilder: (context, index) {
              final item = itemsToShow[index];
              return _buildCard(context, item);
            },
          ),
          const SizedBox(height: 2.0),
          IconButton(
            iconSize: 96.0,
            icon: Icon(
              _expanded ? Icons.expand_less : Icons.expand_more,
              color: AppColors.primary,
            ),
            onPressed: () => setState(() => _expanded = !_expanded),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, NewsItem item) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.snowWhite,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 6.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 140.0,
              child: Image.asset(item.image, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.title,
                style: AppTextStyles.heading2.copyWith(
                  color: AppColors.primaryDark,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.description,
                style: AppTextStyles.body.copyWith(
                  color: AppColors.textSecondary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => print('Read More clicked!'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Read More',
                    style: AppTextStyles.button.copyWith(
                      color: AppColors.snowWhite,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
