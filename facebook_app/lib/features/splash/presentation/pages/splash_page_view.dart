import 'package:facebook_app/features/splash/presentation/widgets/splash_page_view_body.dart';
import 'package:flutter/material.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashPageViewBody()),
    );
  }
}