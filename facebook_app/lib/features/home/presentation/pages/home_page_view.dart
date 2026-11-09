import 'package:facebook_app/features/home/presentation/widgets/home_page_view_body.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomePageViewBody()),);
  }
}