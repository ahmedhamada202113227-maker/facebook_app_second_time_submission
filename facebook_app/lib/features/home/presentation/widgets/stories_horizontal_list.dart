import 'package:facebook_app/features/home/presentation/widgets/custom_one_story_item.dart';
import 'package:facebook_app/features/home/presentation/widgets/one_story_item.dart';
import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StoriesHorizontalList extends StatelessWidget {
  StoriesHorizontalList({super.key});

  final List<StoryModel> _storyModelList = [
    StoryModel(
      imgStory: Assets.assetsImagesHomeRectangle8,
      imgProfile: Assets.assetsImagesHomeImageProfile,
    ),
    StoryModel(
      imgStory: Assets.assetsImagesHomeRectangle7,
      imgProfile: Assets.assetsImagesHomeImageProfile2,
    ),
    StoryModel(
      imgStory: Assets.assetsImagesHomeRectangle8,
      imgProfile: Assets.assetsImagesHomeImageProfile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: AppColors.grey, thickness: 1.5),
        Gap(10),
        SizedBox(
          height: 178,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                CustomOneStoryItem(),
                Gap(10),
                Row(
                  children: List.generate(
                    _storyModelList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: OneStoryItem(
                        storyModel : _storyModelList[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(10),
        const Divider(color: AppColors.grey, thickness: 1.5),
      ],
    );
  }
}


class StoryModel {
  final String imgStory;
  final String imgProfile;

  new({required this.imgStory, required this.imgProfile});
}
