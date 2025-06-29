import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff100B20),
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child:
          Image.asset('assets/images/Logo.png',width: double.infinity,height: double.infinity,)
      ),
    );
  }
}
