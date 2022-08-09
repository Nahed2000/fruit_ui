
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.width = 150
  }) : super(key: key);
final void Function()onPress;
final String title;
final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff69a03a),
          minimumSize:  Size(width, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8))),
      child: Text(title),
    );
  }
}
