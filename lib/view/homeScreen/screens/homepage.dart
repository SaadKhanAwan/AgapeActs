import 'package:agapeacts/view/homeScreen/screens/drawerScreens/opportunites/opportunites.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/actsofkindness_screen.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/more_badgesscreen.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/more_giver.dart';
import 'package:agapeacts/view/homeScreen/widgets/actsofkindnessbox.dart';
import 'package:agapeacts/view/homeScreen/widgets/badgedata.dart';
import 'package:agapeacts/view/homeScreen/widgets/giverdata.dart';
import 'package:agapeacts/view/homeScreen/widgets/hometwocontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/mylist_tile.dart';
import 'package:agapeacts/view/homeScreen/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(
            title: "Home",
            ontab: () {},
          ),
          SizedBox(
            height: mheight * .02,
          ),
          const HomeTwoContainers(),
          SizedBox(
            height: mheight * .02,
          ),
          Padding(
            padding: EdgeInsets.only(right: mwidth * .040, left: mwidth * .040),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Acts of Kindness",
                    style: khomecontinertitleTtextstyle),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ActsofKindnessScreen()));
                    },
                    child:
                        const Text("View more", style: khomeviewmoreTextstyle)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: mwidth * .025, left: mwidth * .025),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: const Color(0xffFCFCFC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ActsofKindnessBox(
                    imageUrl: "assets/images/boxprofile.png",
                    ttile: "Dark_Emeralds",
                    boximageUrl: "assets/images/box1.png",
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .025,
              left: mwidth * .025,
              top: mheight * .039,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Top Givers",
                        style: khomecontinertitleTtextstyle),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MoreGivers()));
                        },
                        child: const Text("View more",
                            style: khomeviewmoreTextstyle)),
                  ],
                ),
                SizedBox(
                  height: mheight * .01,
                ),
                Container(
                  height: mheight * .12,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color(0xffFCFCFC),
                      borderRadius: BorderRadius.circular(10)),
                  child: const GiverData(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .025,
              left: mwidth * .025,
              top: mheight * .039,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Top Badges",
                        style: khomecontinertitleTtextstyle),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Morebadges()));
                        },
                        child: const Text("View more",
                            style: khomeviewmoreTextstyle)),
                  ],
                ),
                SizedBox(
                  height: mheight * .01,
                ),
                Container(
                  height: mheight * .12,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color(0xffFCFCFC),
                      borderRadius: BorderRadius.circular(10)),
                  child: const BadgeData(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .025,
              left: mwidth * .025,
              top: mheight * .039,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Opportunities to Give",
                        style: khomecontinertitleTtextstyle),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MyOpportunities()));
                        },
                        child: const Text("View more",
                            style: khomeviewmoreTextstyle)),
                  ],
                ),
                SizedBox(
                  height: mheight * .01,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color(0xffFCFCFC),
                      borderRadius: BorderRadius.circular(10)),
                  child: const MyListTile(
                    title: "Feed Seniors",
                    tralles: "4.7 miles",
                    discrition: "with Door ways for woman and families",
                  ),
                ),
                SizedBox(
                  height: mheight * .03,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFCFCFC),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: const MyListTile(
                    title: "Montly food distibution",
                    tralles: "5.1 miles",
                    discrition: "with new creation christian church",
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
