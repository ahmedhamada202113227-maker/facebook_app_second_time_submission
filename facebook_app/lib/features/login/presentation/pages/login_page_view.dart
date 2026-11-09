import 'package:facebook_app/features/login/presentation/widgets/login_page_view_body.dart';
import 'package:flutter/material.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: LoginPageViewBody()),);
  }
}