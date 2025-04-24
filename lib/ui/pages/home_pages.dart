import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/ui/widgets/about_section_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/footer_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/image_jumbotron_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/navbar_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/product_banner_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/product_section_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavbarWidget(),
              ImageJumbotronWidget(),
              ProductSectionWidget(),
              ProductBannerWidget(),
              AboutSectionWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
