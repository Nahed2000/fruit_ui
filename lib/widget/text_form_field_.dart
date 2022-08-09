import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
     this.maxLine =2,
     // this.onSaved,
    // required this.onChanged,
    required this.inputType,
  }) : super(key: key);
 final TextInputType inputType;
  // void Function(String value) onChanged = (value){};
  // void Function(String? value) onSaved =(value){};
 final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      // onChanged: onChanged,
      // onSaved: onSaved,
      maxLines: maxLine,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffCCCCCC)
          )
        ),
      ),

    );
  }
}