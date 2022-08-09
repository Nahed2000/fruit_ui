import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    Key? key,
    required this.title,
    required this.imageIcon,
    required this.onPress,
  }) : super(key: key);
 final String title;
 final String imageIcon;
 final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        onPressed: () {},
        label:  Text(
          title,
          style: const TextStyle(color: Colors.black,fontSize: 14),
        ),
        icon: Image.asset(imageIcon),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                color: Color(0xff707070),
              ),
            ),
            primary: Colors.white),
      ),
    );
  }
}
