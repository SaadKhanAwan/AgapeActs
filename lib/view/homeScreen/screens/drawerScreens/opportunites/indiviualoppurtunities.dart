import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/routes/route_name.dart';

class IndividualOpportunity extends StatelessWidget {
  const IndividualOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Individual Opportunity"),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: mheight * .02, left: mwidth * .05),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/E2.png",
                  height: mheight * .1,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: mwidth * .02,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Feed Seniors",
                      style: kActstitle,
                    ),
                    Text(
                      "Glen Dale fire Assosiation,Inc",
                      style: khomecommentstyle,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: mheight * .02,
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              height: 3,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: mheight * .01,
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: const Text(
              "Help distribute boxes of fruit and vegetables or canning goods to low-income senior citizens at H.V. Chartered House, an affordable housing apartment building located in Silver Spring. Boxes will be placed outside apartment doors to minimize contact with resistance. Boxes provide between 20 to 40 points, so volunteers must be able to get around them. AHC follows best practices for volunteers during COVID-19, including wearing masks and social distancing.",
              maxLines: null,
              style: khomecommentstyle,
            ),
          ),
          SizedBox(
            height: mheight * .01,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: mheight * .01,
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  SizedBox(
                    height: mheight * .02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mwidth * .04,
                      ),
                      const Icon(
                        Icons.access_time_rounded,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        width: mwidth * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Duration",
                            style: kActstitle,
                          ),
                          const Text(
                            "Thusday, December 17 from 1:30 pm -2:30 pm",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "Monday, December 21 from 12:30 pm -3:30 pm",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "Friday, January 12 from 11:00 pm -9:30 pm",
                            style: khomecommentstyle,
                          ),
                          SizedBox(
                            height: mheight * .01,
                          ),
                          Container(
                            color: Colors.grey,
                            height: 3,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              color: Colors.grey,
              height: 2,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  SizedBox(
                    height: mheight * .02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mwidth * .04,
                      ),
                      const Icon(
                        Icons.location_on_rounded,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        width: mwidth * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Location",
                            style: kActstitle,
                          ),
                          const Text(
                            "Lose Angelises",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "Torento ,Canada",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "London,UnitedKindom",
                            style: khomecommentstyle,
                          ),
                          SizedBox(
                            height: mheight * .01,
                          ),
                          Container(
                            color: Colors.grey,
                            height: 3,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              color: Colors.grey,
              height: 2,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  SizedBox(
                    height: mheight * .02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mwidth * .04,
                      ),
                      const Icon(
                        Icons.file_copy_outlined,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        width: mwidth * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Document",
                            style: kActstitle,
                          ),
                          const Text(
                            "Personal 40+",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "Public ",
                            style: khomecommentstyle,
                          ),
                          const Text(
                            "Secrect ",
                            style: khomecommentstyle,
                          ),
                          SizedBox(
                            height: mheight * .01,
                          ),
                          Container(
                            color: Colors.grey,
                            height: 3,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              color: Colors.grey,
              height: 2,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: mwidth * .04,
              left: mwidth * .04,
            ),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  SizedBox(
                    height: mheight * .02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mwidth * .04,
                      ),
                      const Icon(
                        Icons.card_giftcard_rounded,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        width: mwidth * .03,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good For",
                            style: kActstitle,
                          ),
                          Text(
                            "Teenager and parents",
                            style: khomecommentstyle,
                          ),
                          Text(
                            "Small Team (2 to 4 people)",
                            style: khomecommentstyle,
                          ),
                          Text(
                            "Couple",
                            style: khomecommentstyle,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: mheight * .02,
          ),
          Padding(
            padding: EdgeInsets.only(left: mwidth * .03, right: mwidth * .03),
            child: MyAuthButton(
                title: "I want to help",
                onPress: () {
                  Navigator.pushNamed(
                      context, RouteNames.submitopportunityScreen);
                }),
          )
        ],
      ),
    );
  }
}
