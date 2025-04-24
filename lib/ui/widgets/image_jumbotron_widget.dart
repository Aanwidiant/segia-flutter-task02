import 'package:flutter/material.dart';
import 'package:segia_bootcamp_task02/common/app_colors.dart';

class ImageJumbotronWidget extends StatelessWidget {
  const ImageJumbotronWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          'assets/images/image_jumbotron.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
