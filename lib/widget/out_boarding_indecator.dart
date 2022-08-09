import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    Key? key,
    this.margin = 10,
    required this.selectedIndex,
    required this.pageController,
    required this.pageIndex,
  }) : super(key: key);
  final bool selectedIndex;
  final double margin;
  final PageController pageController;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pageController.animateToPage(pageIndex,
          duration: const Duration(microseconds: 100),
          curve: Curves.decelerate),
      child: Container(
        height: 13,
        width: 13,
        decoration: BoxDecoration(
            color: selectedIndex == true
                ? const Color(0xff69A03A)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(6.5),
            border: Border.all(
              color: Color(0xff6AA03B),
              width: 1,
            )),
        margin: EdgeInsets.only(left: margin),
      ),
    );
  }

/*
  Container(
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
      border: Border.all(width: 1.0, color: const Color(0xff6aa03b)),
    ),
  )
   */
}
