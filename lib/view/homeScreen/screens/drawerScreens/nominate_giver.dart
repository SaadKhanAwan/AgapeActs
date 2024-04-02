import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/customtextfield.dart';
import 'package:agapeacts/view/homeScreen/widgets/hometwocontainer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class NominateGiver extends StatefulWidget {
  const NominateGiver({super.key});

  @override
  State<NominateGiver> createState() => _NominateGiverState();
}

class _NominateGiverState extends State<NominateGiver> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Nominate A Giver"),
      body: Padding(
        padding: EdgeInsets.only(left: mwidth * .024, right: mwidth * .024),
        child: ListView(
          children: [
            SizedBox(
              height: mheight * .02,
            ),
            const HomeTwoContainers(),
            SizedBox(
              height: mheight * .02,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  color: Color(0xffF5F7F9)),
              child: Padding(
                padding:
                    EdgeInsets.only(left: mwidth * .024, right: mwidth * .024),
                child: Column(
                  children: [
                    SizedBox(
                      height: mheight * .02,
                    ),
                    CustomTextField(
                      hintText: "full name",
                      prefixIcon: Icons.person,
                      height: mheight * .01,
                      borderRadius: 24,
                    ),
                    SizedBox(
                      height: mheight * .04,
                    ),
                    CustomTextField(
                      hintText: "Email address",
                      prefixIcon: Icons.email,
                      height: mheight * .01,
                      borderRadius: 24,
                    ),
                    SizedBox(
                      height: mheight * .04,
                    ),
                    CustomTextField(
                      hintText: "Descreibe acts of kindness",
                      height: mheight * .08,
                      borderRadius: 17,
                    ),
                    SizedBox(
                      height: mheight * .04,
                    ),
                    DottedBorder(
                      color: AppColors.red,
                      strokeWidth: 1,
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: mheight * .01,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              color: AppColors.white,
                              child: const Center(
                                  child: Icon(
                                Icons.image_outlined,
                                color: AppColors.red,
                              )),
                            ),
                            const Text("upload picture and videos"),
                            const Text(
                              "up to 52 mb ",
                              style: khomeprofilesubTitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mheight * .04,
                    ),
                    MyAuthButton(title: "Submit Notification", onPress: () {}),
                    SizedBox(
                      height: mheight * .04,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
