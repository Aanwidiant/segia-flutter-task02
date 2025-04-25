import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/ui/widgets/about_banner_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/company_banner_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/company_history_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/footer_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/navbar_widget.dart';
import 'package:segia_bootcamp_task02/ui/widgets/our_team_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryLight,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavbarWidget(),
              AboutBannerWidget(),
              OurTeamWidget(),
              CompanyBannerWidget(),
              CompanyHistoryWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
