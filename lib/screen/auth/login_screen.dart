import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_social_button.dart';
import 'complete_information.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset('assets/images/PngItem_2746375.png'),
            const SizedBox(height: 20),
            const Text(
              'Fruit Market',
              style: TextStyle(
                  fontSize: 51,
                  color: Color(0xff69a03a),
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                CustomSocialButton(
                  title: 'Login in with',
                  imageIcon: 'assets/images/search (7).png',
                  onPress: () {},
                ),
                const SizedBox(width: 10),
                CustomSocialButton(
                  title: 'Login in with',
                  imageIcon: 'assets/images/facebook (6).png',
                  onPress: () {},
                ),

              ],
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            CustomButton(
                title: 'test information',
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompleteInformationScreen(),
                    ))),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
