import 'package:facebook_app/features/home/presentation/widgets/stories_horizontal_list.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class OneStoryItem extends StatelessWidget {
  const OneStoryItem({super.key, required this._storyModel});

  final StoryModel _storyModel;
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
                _storyModel.imgStory,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                backgroundColor: AppColors.blue,
                radius: 22,
                child: CircleAvatar(
                  radius: 20,
                  child: Image.asset(_storyModel.imgProfile),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
