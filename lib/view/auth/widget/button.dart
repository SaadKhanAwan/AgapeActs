import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:flutter/material.dart';

class MyAuthButton extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  const MyAuthButton({super.key, required this.title, required this.onPress});

  @override
  State<MyAuthButton> createState() => _MyAuthButtonState();
}

class _MyAuthButtonState extends State<MyAuthButton> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: widget.onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffC60000),
        minimumSize: Size(mwidth * 0.9, mheight * 0.08),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 19),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
      ),
      child: Text(
        widget.title,
        style: kauthbuttontextStyle,
      ),
    );
  }
}
