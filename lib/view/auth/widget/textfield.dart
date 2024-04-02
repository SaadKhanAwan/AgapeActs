import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final String hintText;
  final Widget myIcon;
  final TextInputType mytextType;
  bool? textvisible = false;
  MyTextField(
      {super.key,
      required this.hintText,
      required this.myIcon,
      required this.mytextType,
      this.textvisible});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mwidth * .034, vertical: mheight * .009),
        child: TextFormField(
          obscureText: textvisible!,
          keyboardType: mytextType,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            prefixIcon: myIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
          ),
        ));
  }
}
