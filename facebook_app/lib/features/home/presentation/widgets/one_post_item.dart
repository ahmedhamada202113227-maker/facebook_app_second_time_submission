import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OnePostItem extends StatelessWidget {
  const OnePostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 312,
      width: .infinity,
      child: Column(
        children: [
          // ---------- Post Card Info Section ---------- 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Image.asset(
                  Assets.assetsImagesHomeImageProfile2,
                  height: 50,
                  width: 50,
                ),
                const Gap(20),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    const Text(
                      'Route',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '8h.',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset(
                          Assets.assetsImagesHomeEarth,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                ImageIcon(
                  AssetImage(Assets.assetsImagesHomeMoreDots),
                  size: 25,
                  color: AppColors.grey,
                ),
              ],
            ),
          ),
          // ----------    Post Card Content   ----------
          Expanded(child: Image.asset(Assets.assetsImagesHomeRectangle10)),
           // ---------  Post Card Bottom Icons  ---------
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.assetsImagesHomeHeart),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.assetsImagesHomeChatDots),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.assetsImagesHomeSend),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.assetsImagesHomeBookmark),
              ),
            ],
          ),
          Divider(color: AppColors.black, thickness: 1.2),
        ],
      ),
    );
  }
}
