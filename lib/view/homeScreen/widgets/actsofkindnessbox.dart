import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class ActsofKindnessBox extends StatelessWidget {
  final String imageUrl;
  final String boximageUrl;
  final String ttile;
  const ActsofKindnessBox(
      {super.key,
      required this.imageUrl,
      required this.ttile,
      required this.boximageUrl});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: mwidth * .024, top: mheight * .014),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageUrl),
              SizedBox(
                width: mwidth * .040,
              ),
              Column(
                children: [
                  Text(ttile, style: kActstitle),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    width: mwidth * .3,
                    height: mheight * .05,
                    child: const Center(
                      child: Text("Spontaneous", style: khomespontaneousstyle),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: mwidth * .16,
              ),
              Container(
                width: mwidth * .17,
                height: mheight * .05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade400),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.messenger_outline_sharp), Text("47")],
                ),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.02,
          ),
          const Text(
            "Lloyd was very helpful today by taking my mother food and sncaks for week",
            style: kActsdiscribtion,
          ),
          SizedBox(
            height: mheight * 0.01,
          ),
          Image.asset(boximageUrl),
          SizedBox(
            height: mheight * .009,
          ),
          Row(
            children: [
              Image.asset("assets/images/comment1.png"),
              Image.asset("assets/images/comment2.png"),
              Image.asset("assets/images/comment3.png"),
              SizedBox(
                width: mwidth * 0.02,
              ),
              const Text(
                "Commie and 56 other like it",
                style: khomecommentstyle,
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.handshake),
              const Text(
                " Applaud",
                style: khomecommentstyle,
              ),
              SizedBox(
                width: mwidth * 0.07,
              ),
              const Icon(Icons.comment),
              const Text(
                " comment",
                style: khomecommentstyle,
              ),
              SizedBox(
                width: mwidth * 0.07,
              ),
              const Icon(Icons.share),
              const Text(
                " share",
                style: khomecommentstyle,
              ),
            ],
          ),
          SizedBox(
            width: mwidth * 0.02,
          ),
        ],
      ),
    );
  }
}
