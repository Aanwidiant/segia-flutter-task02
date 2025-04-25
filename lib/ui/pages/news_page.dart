import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/ui/widgets/footer_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/navbar_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/news_section_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/news_slider_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryLight,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavbarWidget(),
              NewsSliderWidget(),
              NewsSectionWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
