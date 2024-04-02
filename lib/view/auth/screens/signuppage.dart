import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/auth/widget/textfield.dart';
import 'package:agapeacts/view/auth/widget/uppercontainer.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes/route_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F9),
      body: ListView(
        children: [
          const UpperContainer(
              mimage: "assets/images/homeicon2.png",
              myColor: Colors.white,
              mtextstyle2: kauthcontainerTitleTextstylered2,
              mtextstyle1: kauthcontainerTitleTextstylered1),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sign up",
                  style: kauthlogintextstyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.01,
          ),
          MyTextField(
            hintText: "Email id",
            myIcon: const Icon(Icons.email_outlined),
            mytextType: TextInputType.emailAddress,
            textvisible: false,
          ),
          MyTextField(
            hintText: "Full Name",
            myIcon: const Icon(Icons.person_2_outlined),
            mytextType: TextInputType.name,
            textvisible: false,
          ),
          MyTextField(
            hintText: "Password",
            myIcon: const Icon(Icons.lock_outline_sharp),
            mytextType: TextInputType.visiblePassword,
            textvisible: true,
          ),
          MyTextField(
            hintText: "Confirm Password ",
            myIcon: const Icon(Icons.lock_outline_sharp),
            mytextType: TextInputType.visiblePassword,
            textvisible: true,
          ),
          SizedBox(
            height: mheight * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mwidth * 0.052),
            child: MyAuthButton(
                title: "Sign up",
                onPress: () {
                  Navigator.pushNamed(context, RouteNames.homeScreen);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mheight * 0.05,
              ),
              const Text("Already have a account? ",
                  style: kauthhomesecondPagestyle),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.loginScreen);
                },
                child: const Text(
                  "Log in",
                  style: kauthSignuptextstyle,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
