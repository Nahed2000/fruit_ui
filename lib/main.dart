import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/lunch_screen.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LunchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
