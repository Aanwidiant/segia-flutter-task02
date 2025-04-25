import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/ui/widgets/footer_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/image_jumbotron_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/navbar_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/product_detail_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/product_highlight_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryLight,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavbarWidget(),
              ImageJumbotronWidget(imagePath: 'assets/images/product_5.jpg'),
              ProductHighlightWidget(),
              ProductDetailWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
