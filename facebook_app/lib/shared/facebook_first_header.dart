import 'package:facebook_app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FacebookFirstHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.assetsImagesHomeFacebook, height: 40, width: 120),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.assetsImagesHomePlus),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.assetsImagesHomeSearch),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.assetsImagesHomeMessenger),
            ),
          ],
        ),
      ],
    );
  }
}
