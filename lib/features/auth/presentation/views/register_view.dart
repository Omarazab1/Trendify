import 'package:flutter/material.dart';
import 'package:trendify/features/auth/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
   static const String routeName = '/registerView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: RegisterViewBody()),
    );
  }
}
