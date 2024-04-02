import 'package:agapeacts/view/homeScreen/widgets/actsofkindnessbox.dart';
import 'package:agapeacts/view/homeScreen/widgets/hometwocontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:flutter/material.dart';

class SubmittedActs extends StatelessWidget {
  const SubmittedActs({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(children: [
        const HomeAppBar(title: "Submitted ACts"),
        SizedBox(
          height: mheight * .02,
        ),
        const HomeTwoContainers(),
        SizedBox(
          height: mheight * .02,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: const Color(0xffFCFCFC),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          child: const ActsofKindnessBox(
            imageUrl: "assets/images/boxprofile.png",
            ttile: "Dark_Emeralds",
            boximageUrl: "assets/images/box1.png",
          ),
        ),
        SizedBox(
          height: mheight * 0.03,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: const Color(0xffFCFCFC),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ActsofKindnessBox(
            imageUrl: "assets/images/Group1.png",
            boximageUrl: "assets/images/box2.png",
            ttile: "Jesakia",
          ),
        ),
      ]),
    );
  }
}
