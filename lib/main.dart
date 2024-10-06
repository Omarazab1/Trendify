import 'package:flutter/material.dart';

void main() {
  runApp(const Trendify());
}

class Trendify extends StatelessWidget {
  const Trendify({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: onGenerateRoute,
      // initialRoute: SplashView.routeName,
    );
  }
}
