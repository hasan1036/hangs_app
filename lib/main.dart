import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hangs_app_user/BottomNavbar/bttom_nav_bar.dart';
import 'package:hangs_app_user/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '행스 홈',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Color(0xffF2C6BD),
              elevation: 1
          ),
          primaryColor: const Color(0x0feeccc2)

        // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfeeccc2)),
        // useMaterial3: true,
      ),
      home:  SplashScreen(),
    );
  }
}

