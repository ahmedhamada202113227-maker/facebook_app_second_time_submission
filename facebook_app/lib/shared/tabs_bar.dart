import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabsBar extends StatelessWidget {
  const new({super.key, required this._tabBarController});

  final TabController _tabBarController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: AppColors.grey,
      dividerColor: AppColors.grey,
      indicatorColor: AppColors.blue,
      controller: _tabBarController,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: <Widget>[
        Tab(
          icon: SvgPicture.asset(
            Assets.assetsImagesIconsTabBarHome,
            height: 25,
            width: 25,
            color: _tabBarController.index == 0
                ? AppColors.blue
                : AppColors.grey,
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            Assets.assetsImagesIconsTabBarWatch,
            height: 25,
            width: 25,
            color: _tabBarController.index == 1
                ? AppColors.blue
                : AppColors.grey,
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            Assets.assetsImagesIconsTabBarStore,
            height: 25,
            width: 25,
            color: _tabBarController.index == 2
                ? AppColors.blue
                : AppColors.grey,
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            Assets.assetsImagesIconsTabBarProfile,
            height: 30,
            width: 30,
            color: _tabBarController.index == 3
                ? AppColors.blue
                : AppColors.grey,
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            Assets.assetsImagesIconsTabBarNotification,
            height: 25,
            width: 25,
            color: _tabBarController.index == 4
                ? AppColors.blue
                : AppColors.grey,
          ),
        ),
        Tab(
          icon: Image.asset(
            Assets.assetsImagesHomeImageProfile,
            height: 25,
            width: 25,
          ),
        ),
      ],
    );
  }
}
