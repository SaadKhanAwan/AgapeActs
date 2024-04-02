import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class AppliedOpportunity extends StatelessWidget {
  const AppliedOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Applied Opportunity"),
      body: ListView(children: [
        buildcard("comment1", "Feed seniors", "Date of Submission",
            "Mission oxygen", mwidth, mheight),
        buildcard("comment2", "Domestic voilence", "Date of Submission",
            "high Mountain", mwidth, mheight),
        buildcard("comment3", "Tackle Hunger", "Date of Submission",
            "Brethe India", mwidth, mheight),
        buildcard("comment2", "Feed seniors", "Date of Submission",
            "high Mountain", mwidth, mheight),
        buildcard("comment3", "Tackle Hunger", "Date of Submission",
            "Brethe India", mwidth, mheight),
        buildcard("comment1", "Domestic voilence", "Date of Submission",
            "high Mountain", mwidth, mheight),
        buildcard("comment2", "Feed seniors", "Date of Submission",
            "high Mountain", mwidth, mheight),
      ]),
    );
  }

  buildcard(E, title1, title2, title3, mwidth, mheight) {
    return Container(
      margin: EdgeInsets.only(
          top: mheight * .02, left: mwidth * .04, right: mwidth * .04),
      padding: EdgeInsets.only(left: mwidth * .015),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(spreadRadius: 0.2, blurRadius: 1)],
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/$E.png"),
              const SizedBox(
                width: 5,
              ),
              Text(
                title3,
                style: khomecommentstyle,
              )
            ],
          ),
          ListTile(
            title: Text(title1),
            subtitle: Row(
              children: [
                Text(title2),
                const Text(
                  " 12 :00 pm",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 12),
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_outlined),
          )
        ],
      ),
    );
  }
}
