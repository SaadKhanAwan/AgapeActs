import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/routes/route_name.dart';

class MyOpportunities extends StatelessWidget {
  const MyOpportunities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const HomeAppBar(
          title: "Opportunities",
        ),
        buildcard(
            "Feed Seniors", "With Glernn Deail fire", "4.7 Miles", context),
        buildcard("Domestic Volience Shelter", "With Door ways And Familes",
            "8.7 Miles", context),
        buildcard("Tackel Hunger : Donestions", "With do something",
            "2.7 Miles", context),
        buildcard(
            "Out Reach leader", "With Glee church", "11.7 Miles", context),
        buildcard(
            "Feed Seniors", "With Glernn Deail fire", "4.7 Miles", context),
        buildcard(
            "Be A Mentor", "With Glernn Deail fire", "14.7 Miles", context),
        buildcard("Montly Food Distribution", "With Glernn Deail fire",
            "21.7 Miles", context),
      ],
    ));
  }

  buildcard(title, title2, title3, context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          top: mheight * .015, left: mwidth * .04, right: mwidth * .04),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.indiviualopportunityScreen);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: AppColors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kActstitle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title2,
                    style: khomecommentstyle,
                  ),
                  Text(
                    title3,
                    style: khomecommentstyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
