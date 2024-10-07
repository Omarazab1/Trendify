import 'package:flutter/material.dart';
import 'package:trendify/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splashView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffDEDEDE),
      body: SplashViewBody(),
    );
  }
}
