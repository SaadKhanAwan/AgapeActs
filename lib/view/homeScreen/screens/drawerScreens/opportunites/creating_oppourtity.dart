import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class CreateOpportunity extends StatelessWidget {
  const CreateOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Create Opportunity"),
      body: ListView(
        children: [
          buildcard(context, "E2", "High Mountain", "feed senior", "41"),
          buildcard2(
              context, "E3", "Acts Grants", "will change a child...", "37"),
          buildcard2(
              context, "E4", "Acts Grants", "will change a child...", "37"),
          buildcard(
              context, "E5", "Acts Grants", "will change a child...", "37"),
          buildcard(
              context, "E6", "Acts Grants", "will change a child...", "37"),
          buildcard2(
              context, "E7", "Acts Grants", "will change a child...", "37"),
          buildcard(
              context, "E8", "Acts Grants", "will change a child...", "37"),
        ],
      ),
    );
  }

  buildcard(context, e, t1, t2, t3) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          top: mheight * .02, left: mwidth * .04, right: mwidth * .04),
      padding: EdgeInsets.only(
        top: mheight * .02,
        left: mwidth * .04,
        bottom: mheight * .02,
      ),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(spreadRadius: 0.2, blurStyle: BlurStyle.outer, blurRadius: .4)
      ], color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/$e.png",
          ),
          SizedBox(
            width: mwidth * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t1,
                style: khomelistTileTitlestyle,
              ),
              Text(
                t2,
                style: khomeTopGiversubTitleStyle,
              ),
              Text(
                "Non of Applicants:$t3",
                style: khomeTopGiversubTitleStyle,
              ),
            ],
          ),
          SizedBox(
            width: mwidth * .17,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.arrow_drop_down_sharp),
              Container(
                width: mwidth * .2,
                height: mheight * .03,
                decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Remaining",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  buildcard2(context, e, t1, t2, t3) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          top: mheight * .02, left: mwidth * .04, right: mwidth * .04),
      padding: EdgeInsets.only(
        top: mheight * .02,
        left: mwidth * .04,
        bottom: mheight * .02,
      ),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(spreadRadius: 0.2, blurStyle: BlurStyle.outer, blurRadius: .4)
      ], color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/$e.png",
          ),
          SizedBox(
            width: mwidth * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t1,
                style: khomelistTileTitlestyle,
              ),
              Text(
                t2,
                style: khomeTopGiversubTitleStyle,
              ),
              Text(
                "Non of Applicants:$t3",
                style: khomeTopGiversubTitleStyle,
              ),
            ],
          ),
          SizedBox(
            width: mwidth * .25,
          ),
          const Icon(Icons.arrow_drop_down_sharp)
        ],
      ),
    );
  }
}
