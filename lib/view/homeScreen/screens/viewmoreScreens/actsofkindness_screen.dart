import 'package:agapeacts/view/homeScreen/widgets/hometwocontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/kindness_widget.dart';
import 'package:flutter/material.dart';

class ActsofKindnessScreen extends StatelessWidget {
  const ActsofKindnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(children: [
        const HomeAppBar(title: "Acts of Kindness"),
        SizedBox(
          height: mheight * .02,
        ),
        const HomeTwoContainers(),
        SizedBox(
          height: mheight * .02,
        ),
        const KindnessWidget()
      ]),
    );
  }
}
