import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:facebook_app/features/splash/presentation/pages/splash_page_view.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(enabled: true, builder: (context) => const FacebookApp()),
  );
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.appBG,
      ),
      home: SplashPageView(),
    );
  }
}
