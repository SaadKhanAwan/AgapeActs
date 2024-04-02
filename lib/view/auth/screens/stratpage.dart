import 'package:agapeacts/view/auth/screens/loginpage.dart';
import 'package:agapeacts/view/auth/screens/signuppage.dart';
import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/auth/widget/uppercontainer.dart';
import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:flutter/material.dart';

class StratPage extends StatelessWidget {
  const StratPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          const UpperContainer(
            myColor: Color(0xffC60000),
            mtextstyle2: kauthcontainerTitleTextstylewhite2,
            mtextstyle1: kauthcontainerTitleTextstylewhite1,
            mimage: "assets/images/homeicon.png",
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Congratulate those who do \n positive deeds",
                  textAlign: TextAlign.center,
                  style: kauthhomePagestyle,
                ),
                SizedBox(
                  height: mheight * 0.017,
                ),
                const Text(
                  "Applaud Explore,and Share with your friends",
                  style: kauthhomesecondPagestyle,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/facebookicon.png"),
              SizedBox(
                width: mwidth * 0.05,
              ),
              Image.asset("assets/images/twittericon.png"),
              SizedBox(
                width: mwidth * 0.05,
              ),
              Image.asset("assets/images/googleicon.png"),
            ],
          ),
          SizedBox(
            height: mheight * 0.017,
          ),
          MyAuthButton(
            title: "Log in",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginPage()));
            },
          ),
          SizedBox(
            height: mheight * 0.017,
          ),
          MyAuthButton(
            title: "Create Account",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SignUpScreen()));
            },
          ),
          SizedBox(
            height: mheight * 0.019,
          ),
        ],
      ),
    );
  }
}
