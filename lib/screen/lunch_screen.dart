import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'out_boarding.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 750),
    );
    animation = Tween<double>(begin: .2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);

    Future.delayed(
        Duration(seconds: 1), () => Get.to(() => OutBoardingScreen()));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff69A03A),
      body: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: animation,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 51,
                fontWeight: FontWeight.w900,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Image.asset('assets/images/mix_fruit_png_11.png'),
        ],
      ),
    );
  }
}
