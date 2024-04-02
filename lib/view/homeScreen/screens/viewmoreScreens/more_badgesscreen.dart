import 'package:agapeacts/view/homeScreen/widgets/hometwocontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/timecontinor.dart';
import 'package:agapeacts/view/homeScreen/widgets/widgetsviewmore/viewbadge.dart';
import 'package:flutter/material.dart';

class Morebadges extends StatefulWidget {
  const Morebadges({super.key});

  @override
  State<Morebadges> createState() => _MorebadgesState();
}

class _MorebadgesState extends State<Morebadges> {
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const HomeAppBar(title: "Top Badges"),
          SizedBox(
            height: mheight * 0.02,
          ),
          const HomeTwoContainers(),
          SizedBox(
            height: mheight * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(right: mwidth * .025, left: mwidth * .025),
            child: const TimeContainer(),
          ),
          Padding(
            padding: EdgeInsets.only(right: mwidth * .025, left: mwidth * .025),
            child: const BadgesListView(),
          ),
        ],
      ),
    );
  }
}
