import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helper/on_generate_route.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
        builder: (context) => const Trendify(),
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools
        ],
    )
  );

}

class Trendify extends StatelessWidget {
  const Trendify({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         onGenerateRoute: onGenerateRoute,
         initialRoute: SplashView.routeName,
      ),
    );
  }
}
