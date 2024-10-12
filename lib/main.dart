
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendify/core/di/injection.dart';
import 'package:trendify/features/splash/presentation/views/splash_view.dart';
import 'core/helper/on_generate_route.dart';
import 'core/service/custom_bloc_observer.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();

  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) => const Trendify()),


        //child:
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
         //initialRoute: SplashView.routeName,
      ),
    );
  }
}
