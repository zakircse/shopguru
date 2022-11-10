import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopguru/consts/consts.dart';
import 'package:shopguru/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //we are using getX so we have to use GetMaterialApp here
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopguru',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
