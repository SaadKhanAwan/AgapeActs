import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  final String mimage;
  final TextStyle mtextstyle2;
  final TextStyle mtextstyle1;

  final Color myColor;
  const UpperContainer(
      {super.key,
      required this.mimage,
      required this.myColor,
      required this.mtextstyle2,
      required this.mtextstyle1});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.center,
      height: mheight / 3,
      decoration:
          BoxDecoration(color: myColor, borderRadius: kauthupperBoderradius),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: mheight * 0.07,
          ),
          Image.asset(mimage),
          SizedBox(
            height: mheight * 0.001,
          ),
          RichText(
            text: TextSpan(
              style: mtextstyle2,
              children: <TextSpan>[
                TextSpan(text: 'Agape', style: mtextstyle1),
                const TextSpan(
                  text: 'Acts',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
