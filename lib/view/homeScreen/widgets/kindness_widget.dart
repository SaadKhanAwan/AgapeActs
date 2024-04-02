import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/actsofkindnessbox.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/viewcomment.dart';
import 'package:flutter/material.dart';

class KindnessWidget extends StatelessWidget {
  const KindnessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: mwidth * .025, left: mwidth * .025),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: const Color(0xffFCFCFC),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10))),
            child: const ActsofKindnessBox(
              imageUrl: "assets/images/boxprofile.png",
              ttile: "Dark_Emeralds",
              boximageUrl: "assets/images/box1.png",
            ),
          ),
          SizedBox(
            height: mheight * 0.006,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffFCFCFC),
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Padding(
              padding:
                  EdgeInsets.only(right: mwidth * .005, left: mwidth * .001),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: mwidth * .025,
                        left: mwidth * .025,
                        top: mheight * .015),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "View all comemnts",
                          style: khomecommentTitlestyle,
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                  const ViewComment(
                      imageUrl: "assets/images/Group2.png",
                      title: "Kane",
                      title2: " Awsome between you guys doing greate job ",
                      subttile: "12m   Reply",
                      myicon: Icon(
                        Icons.favorite_border_rounded,
                        color: AppColors.red,
                      )),
                  const ViewComment(
                      imageUrl: "assets/images/Group1.png",
                      title: "Juliana",
                      title2: " Keep doing nice job ",
                      subttile: "56m   Reply",
                      myicon: Icon(
                        Icons.favorite_border_rounded,
                      )),
                  const ViewComment(
                      imageUrl: "assets/images/Group3.png",
                      title: "Sara",
                      title2: " Awsome greate work ",
                      subttile: "1m   Reply",
                      myicon: Icon(
                        Icons.favorite_border_rounded,
                      ))
                ],
              ),
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
        ],
      ),
    );
  }
}
