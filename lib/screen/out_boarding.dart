import 'package:flutter/material.dart';

import '../widget/custom_button.dart';
import '../widget/out_boarding_indecator.dart';
import '../widget/out_bording_body.dart';
import 'auth/login_screen.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: currentPage != 2,
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: const Duration(microseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff898989),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                    print(currentPage);
                  },
                  controller: _pageController,
                  children: const [
                    OutBoardingContent(
                      title: 'E Shopping',
                      subTitle: 'Explore  top organic fruits & grab them',
                      image: 'assets/images/page_view_1.png',
                    ),
                    OutBoardingContent(
                      title: 'Delivery on the way',
                      subTitle: 'Get your order by speed delivery',
                      image: 'assets/images/page_view_2.png',
                    ),
                    OutBoardingContent(
                      title: 'Delivery Arrived',
                      subTitle: 'Order is arrived at your Place',
                      image: 'assets/images/page_view_3.png',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutBoardingIndicator(
                    margin: 10,
                    selectedIndex: currentPage == 0,
                    pageController: _pageController,
                    pageIndex: 0,
                  ),
                  OutBoardingIndicator(
                    margin: 10,
                    selectedIndex: currentPage == 1,
                    pageController: _pageController,
                    pageIndex: 1,
                  ),
                  OutBoardingIndicator(
                    margin: 10,
                    selectedIndex: currentPage == 2,
                    pageController: _pageController,
                    pageIndex: 2,
                  ),
                ],
              ),
              const SizedBox(height: 80),
              CustomButton(
                title: currentPage == 2 ? 'Get Started' : 'Next',
                onPress: () => currentPage == 2
                    ? Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ))
                    : _pageController.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.decelerate),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
