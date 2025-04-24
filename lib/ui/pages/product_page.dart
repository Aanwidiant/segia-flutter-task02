import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/ui/widgets/footer_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/navbar_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavbarWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
