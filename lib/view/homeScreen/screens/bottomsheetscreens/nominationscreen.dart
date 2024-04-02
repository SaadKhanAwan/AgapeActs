import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class NominationScreen extends StatelessWidget {
  const NominationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const MyAppBar(title: "Nomination"),
        body: Padding(
          padding: EdgeInsets.only(
              top: mheight * .03, left: mwidth * .05, right: mwidth * .05),
          child: ListView(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/E2.png",
                  fit: BoxFit.cover,
                  height: mheight * .09,
                ),
                SizedBox(
                  width: mwidth * .040,
                ),
                const Text("Dark_Emeralds", style: kActstitle),
              ],
            ),
            SizedBox(
              height: mheight * .02,
            ),
            const Text(
              "Lloyd was very helpful today by taking my mother food and sncaks for week",
              style: kActsdiscribtion,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            Image.asset("assets/images/box1.png"),
            SizedBox(
              height: mheight * .02,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Why did you give", style: kActstitle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        width: mwidth * .4,
                        height: mheight * .05,
                        child: const Center(
                          child:
                              Text("Spontaneous", style: khomespontaneousstyle),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff842CB7),
                            borderRadius: BorderRadius.circular(20)),
                        width: mwidth * .4,
                        height: mheight * .05,
                        child: const Center(
                          child:
                              Text("Spontaneous", style: khomespontaneousstyle),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mheight * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE1692D),
                            borderRadius: BorderRadius.circular(20)),
                        width: mwidth * .4,
                        height: mheight * .05,
                        child: const Center(
                          child:
                              Text("Spontaneous", style: khomespontaneousstyle),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE1A93C),
                            borderRadius: BorderRadius.circular(20)),
                        width: mwidth * .4,
                        height: mheight * .05,
                        child: const Center(
                          child:
                              Text("Spontaneous", style: khomespontaneousstyle),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: mwidth * .025,
                        right: mwidth * .025,
                        top: mheight * .015,
                        bottom: mheight * .03),
                    child: const Text(
                      "The Spontaneous Giver is based on sudden inner pleasure",
                      style: kActsdiscribtion,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mheight * .02,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Why did you give", style: kActstitle),
                    SizedBox(
                      height: mheight * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.white,
                            minimumSize: Size(mwidth * .37, mheight * .06),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: AppColors.red,
                            minimumSize: Size(mwidth * .37, mheight * .06),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
