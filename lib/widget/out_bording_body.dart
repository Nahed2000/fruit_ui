import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent({Key? key,
  required this.image,
  required this.title,
  required this.subTitle,
  }) : super(key: key);
final String title;
final String image;
final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 250,child: Image.asset(image)),
            const SizedBox(height: 40),
             Text(
              title,
              style:const TextStyle(
                fontSize: 20,
                color: Color(0xff2f2e41),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
             Text(
              subTitle,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xff78787c),
              ),

            )
          ],
        ),
      ),
    );
  }
}
