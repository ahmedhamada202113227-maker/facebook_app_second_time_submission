import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOneStoryItem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 178,
        width: 132,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                Assets.assetsImagesHomeRectangle7,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: -5,
              child: Container(
                width: .infinity,
                height: 60,
                color: AppColors.appBG,
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: AppColors.appBG,
                  shape: .circle,
                ),
              ),
            ),
            Positioned(
              bottom: 43,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                Assets.assetsImagesHomePlus,
                height: 30,
                width: 30,
                color: AppColors.blue,
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    'Create a',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: .w600,
                    ),
                    textAlign: .center,
                  ),
                  Text(
                    'Story',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: .w600,
                    ),
                    textAlign: .center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


