import 'package:facebook_app/root_of_app.dart';
import 'package:facebook_app/utils/app_assets.dart';
import 'package:facebook_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPageViewBody extends StatefulWidget {
  const LoginPageViewBody({super.key});

  @override
  State<LoginPageViewBody> createState() => _LoginPageViewBodyState();
}

bool isTrue = true;

class _LoginPageViewBodyState extends State<LoginPageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(Assets.assetsImagesSplashLogo, height: 100, width: 100),
        Gap(60),
        // ----------- column for textfields and buttons -----------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              CustomTextField(
                hintTxt: 'Mobile Number or Email Address',
                isSecured: false,
              ),
              Gap(24),
              CustomTextField(
                hintTxt: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    isTrue = !isTrue;
                    setState(() {});
                  },
                  icon: isTrue == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                isSecured: isTrue,
              ),
              Gap(40),
              // ------------------- Login Button -------------------
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RootOfApp()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.blue),
                  fixedSize: WidgetStatePropertyAll(Size(400, 55)),
                  shape: WidgetStatePropertyAll(
                    ContinuousRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(42),
                    ),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              Gap(24),
              Text('Forgotten Password ?'),
              Gap(100),
              // ------------- Create New Account Button -------------
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.appBG),
                  fixedSize: WidgetStatePropertyAll(Size(400, 55)),
                  shape: WidgetStatePropertyAll(
                    ContinuousRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(42),
                    ),
                  ),
                  side: WidgetStatePropertyAll(
                    BorderSide(color: AppColors.blue, width: 1.5),
                  ),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: AppColors.blue, fontSize: 18),
                ),
              ),
              Image.asset(
                Assets.assetsImagesSplashMetaLogo,
                height: 80,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintTxt,
    this.isSecured = true,
    this.suffixIcon,
  });

  final String hintTxt;
  final bool isSecured;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecured,
      decoration: InputDecoration(
        fillColor: AppColors.filled.withValues(alpha: 0.4),
        filled: true,
        contentPadding: EdgeInsets.all(20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1.1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 1.8),
        ),
        hintText: hintTxt,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
