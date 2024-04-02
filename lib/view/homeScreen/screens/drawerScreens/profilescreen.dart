import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/bottomsheet.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/kindness_widget.dart';
import 'package:agapeacts/viewmodel/services/bottomsheeetviewmodel.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final BottomSheetViewModel viewModel = BottomSheetViewModel();

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo is ScrollEndNotification &&
              scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            _showBottomSheet(context);
          }
          return false;
        },
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/profile_r.png",
                      width: double.infinity,
                    ),
                    Container(
                      color: AppColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: mheight * .05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: mwidth * .025),
                            child: const Text(
                              "Arisha Wastson",
                              style: khomeprofileTitlestyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: mwidth * .025),
                            child: const Text(
                              "Georgia",
                              style: khomeprofilesubTitleStyle,
                            ),
                          ),
                          SizedBox(
                            height: mheight * .02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: khomeprofilesubTitleStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '18',
                                        style: khomeprofileTitlestyle),
                                    TextSpan(
                                      text: 'Friends',
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: khomeprofilesubTitleStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '314',
                                        style: khomeprofileTitlestyle),
                                    TextSpan(
                                      text: 'Adage Tokens',
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: khomeprofilesubTitleStyle,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '1.3k',
                                        style: khomeprofileTitlestyle),
                                    TextSpan(
                                      text: 'Applaund',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: mheight * .04,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mheight * .012,
                    ),
                    Container(
                      color: AppColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: mwidth * .025),
                            child: const Text(
                              "Agape Badges",
                              style: khomeprofileTitlestyle,
                            ),
                          ),
                          SizedBox(
                            height: mheight * .02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/G1.png",
                              ),
                              Image.asset(
                                "assets/images/G2.png",
                              ),
                              Image.asset(
                                "assets/images/G3.png",
                              ),
                              Image.asset(
                                "assets/images/G4.png",
                              ),
                              Image.asset(
                                "assets/images/G5.png",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: mheight * .02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: mwidth * .025),
                            child: const Text(
                              "About",
                              style: khomeprofileTitlestyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: mwidth * .025),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.halfwhite,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: mwidth * .025, bottom: mheight * .03),
                                child: const Text(
                                  "A passionate coder loves to swim and dance. An Enthusiastic Designer loves reading books, always being positive humor.",
                                  style: khomeprofileaboutStyle,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mheight * .06,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: mwidth * .035, bottom: mheight * .005),
                            child: const Text("Acts of Kindness",
                                style: khomecontinertitleTtextstyle),
                          ),
                          const KindnessWidget()
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: mwidth * .05,
                  top: mheight * .14,
                  child: Image.asset(
                    "assets/images/E2.png",
                    fit: BoxFit.cover,
                    height: mheight * .1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return MyBottomSheet(); // Your custom bottom sheet widget
      },
    );
  }
}
