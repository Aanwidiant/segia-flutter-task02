import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class NewsItem {
  final String image;
  final String title;

  NewsItem({required this.image, required this.title});
}

class NewsSliderWidget extends StatefulWidget {
  const NewsSliderWidget({super.key});

  @override
  State<NewsSliderWidget> createState() => _NewsSliderWidgetState();
}

class _NewsSliderWidgetState extends State<NewsSliderWidget> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  final List<NewsItem> _newsItems = [
    NewsItem(
      image: 'assets/images/product_4.jpg',
      title: 'New Collection Launch',
    ),
    NewsItem(
      image: 'assets/images/product_6.jpg',
      title: 'Sustainable Materials in Our Bags',
    ),
    NewsItem(
      image: 'assets/images/product_7.jpg',
      title: 'Exclusive Designer Collaboration',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _newsItems.length,
              itemBuilder: (context, index) {
                return _buildNewsCard(
                  image: _newsItems[index].image,
                  title: _newsItems[index].title,
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _newsItems.length,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentPage == index
                          ? AppColors.primaryDark
                          : AppColors.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard({required String image, required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withAlpha((0.3 * 255).toInt()),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            // Title
            Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
              child: Text(
                title,
                style: AppTextStyles.heading2.copyWith(
                  color: AppColors.snowWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
