import 'package:facebook_app/features/login/presentation/pages/login_page_view.dart';
import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPageViewBody extends StatefulWidget {
  const SplashPageViewBody({super.key});

  @override
  State<SplashPageViewBody> createState() => _SplashPageViewBodyState();
}

class _SplashPageViewBodyState extends State<SplashPageViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 4200), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => LoginPageView()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      mainAxisAlignment: .center,
      children: [
        Spacer(),
        Image.asset(Assets.assetsImagesSplashLogo, height: 100, width: 100),
        Spacer(),
        Text(
          'From',
          style: TextStyle(color: AppColors.filled, fontSize: 20),
          textAlign: .center,
        ),
        SizedBox(height: 6),
        Image.asset(Assets.assetsImagesSplashMetaLogo, height: 50, width: 50),
      ],
    );
  }
}
