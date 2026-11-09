import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WhatsinYourMindSection extends StatelessWidget {
  const WhatsinYourMindSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Image.asset(
                Assets.assetsImagesHomeImageProfile,
                height: 50,
                width: 50,
              ),
              const Gap(20),
              const Text(
                'What’s in Your Mind?',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Image.asset(Assets.assetsImagesHomePhotos, height: 35, width: 35),
            ],
          ),
        ),
        const Gap(10),
      ],
    );
  }
}


