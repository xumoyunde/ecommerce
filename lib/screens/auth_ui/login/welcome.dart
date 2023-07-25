import 'package:ecommerce/constants/asset_images.dart';
import 'package:ecommerce/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: kToolbarHeight),
          Image.asset(
            AssetImages.instance.welcomeImage,
          ),
          const SizedBox(height: 25),
          Text("Let's you in", style: AppTheme.lightTheme.textTheme.titleLarge),

        ],
      ),
    );
  }
}
