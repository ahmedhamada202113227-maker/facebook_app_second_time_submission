import 'package:facebook_app/features/home/presentation/widgets/one_post_item.dart';
import 'package:facebook_app/features/home/presentation/widgets/stories_horizontal_list.dart';
import 'package:facebook_app/features/home/presentation/widgets/whats_in_your_mind_section.dart';
import 'package:flutter/material.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: WhatsinYourMindSection()),
        SliverToBoxAdapter(child: StoriesHorizontalList()),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 10, (
            context,
            index,
          ) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: OnePostItem(),
            );
          }),
        ),
      ],
    );
  }
}








