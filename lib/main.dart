import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/lunch_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
