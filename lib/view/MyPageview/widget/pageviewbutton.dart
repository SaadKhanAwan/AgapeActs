import 'package:agapeacts/view/homeScreen/screens/homepage.dart';
import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:flutter/material.dart';

class MyPageViewButton extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  final PageController pageController;
  const MyPageViewButton(
      {super.key,
      required this.title,
      required this.onPress,
      required this.pageController});

  @override
  State<MyPageViewButton> createState() => _MyAuthButtonState();
}

class _MyAuthButtonState extends State<MyPageViewButton> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        if (widget.title == "Explore Agape") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const HomePage()));
        } else {
          setState(() {
            widget.pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          });
        }
      },
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
