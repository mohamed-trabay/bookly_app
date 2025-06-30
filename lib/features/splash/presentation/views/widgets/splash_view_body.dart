import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigateToHome();
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 8),
        SlideTransition(
          position: _animation,
          child: SlidingText(controller: _controller),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(_controller);
    _controller.forward();
  }
  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}
