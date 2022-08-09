import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';
import '../../widget/text_form_field_.dart';

class CompleteInformationScreen extends StatefulWidget {
  const CompleteInformationScreen({Key? key}) : super(key: key);

  @override
  State<CompleteInformationScreen> createState() =>
      _CompleteInformationScreenState();
}

class _CompleteInformationScreenState extends State<CompleteInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(title: 'Enter Your Name'),
              const SizedBox(height: 15),
              const TextFormWidget(
                // onSaved: /,
                // onChanged: (value){},
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 25),
              CustomText(title: 'Enter Your Phone Number'),
              const SizedBox(height: 15),
              const TextFormWidget(
                // onSaved: /,
                // onChanged: (value){},
                inputType: TextInputType.text,
              ),
              const SizedBox(height: 25),
              CustomText(title: 'Add Address'),
              const SizedBox(height: 15),
              const TextFormWidget(
                // onSaved: /,
                // onChanged: (value){},
                inputType: TextInputType.text,
                maxLine: 5,
              ),
              const SizedBox(height: 35),
              CustomButton(
                title: 'Login',
                onPress: () {},
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomText({required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xff0c0b0b),
        fontWeight: FontWeight.w600,
        height: 1.5625,
      ),
      softWrap: false,
    );
  }
}
