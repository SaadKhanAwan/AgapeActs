import 'package:agapeacts/utils/routes/route_name.dart';
import 'package:agapeacts/view/auth/widget/auth_constants.dart';
import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/auth/widget/textfield.dart';
import 'package:agapeacts/view/auth/widget/uppercontainer.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "Login",
                  style: kauthlogintextstyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.05,
          ),
          MyTextField(
            hintText: "Email id",
            myIcon: const Icon(Icons.email_outlined),
            mytextType: TextInputType.visiblePassword,
            textvisible: false,
          ),
          MyTextField(
            hintText: "Password",
            myIcon: const Icon(Icons.lock_outline_sharp),
            mytextType: TextInputType.visiblePassword,
            textvisible: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: mheight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(right: mwidth * .04),
                child: const Text(
                  "Forget password ?",
                  style: kauthforgetpasswordtextstyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.06,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mwidth * 0.052),
            child: MyAuthButton(
                title: "Login",
                onPress: () {
                  Navigator.pushNamed(context, RouteNames.pageView);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mheight * 0.05,
              ),
              const Text("Don't have a account? ",
                  style: kauthhomesecondPagestyle),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.signUpScreen);
                },
                child: const Text(
                  "Sign up",
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
