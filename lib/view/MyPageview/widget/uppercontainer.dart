import 'package:agapeacts/view/MyPageview/widget/pagevewcontants.dart';
import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:flutter/material.dart';

class UpperContainerPageView extends StatelessWidget {
  const UpperContainerPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;

    return Container(
        height: mheight / 3,
        decoration: const BoxDecoration(
            color: Color(0xffC60000), borderRadius: kauthupperBoderradius),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: mheight * 0.06, horizontal: mwidth * .03),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/homeicon.png",
                height: mheight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: mheight * 0.012, horizontal: mwidth * .003),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: kpageviewText12,
                    children: <TextSpan>[
                      TextSpan(text: 'Agape', style: kpageviewText1),
                      TextSpan(
                        text: 'Acts',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
