import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';
import 'package:segia_bootcamp_task02/common/app_text_styles.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

    return SafeArea(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo_bagShop.png',
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            _NavItem(
              title: 'Product',
              route: '/products',
              currentRoute: currentRoute,
            ),
            const SizedBox(width: 6),
            _NavItem(
              title: 'About',
              route: '/about',
              currentRoute: currentRoute,
            ),
            const SizedBox(width: 6),
            _NavItem(title: 'News', route: '/news', currentRoute: currentRoute),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final String route;
  final String? currentRoute;

  const _NavItem({
    required this.title,
    required this.route,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = route == currentRoute;

    return TextButton(
      onPressed: () {
        if (!isActive) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Text(
        title,
        style: AppTextStyles.body.copyWith(
          fontWeight: isActive ? FontWeight.bold : FontWeight.w600,
          color: isActive ? AppColors.textPrimary : AppColors.snowWhite,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
