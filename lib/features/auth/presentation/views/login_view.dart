import 'package:flutter/material.dart';
import 'package:trendify/features/auth/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "loginView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: LoginViewBody()),
    );
  }
}
