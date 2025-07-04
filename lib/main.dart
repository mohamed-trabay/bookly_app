import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:   kPrimaryColor,),
      debugShowCheckedModeBanner: false,

      home: const SplashView()



    );
  }
}
