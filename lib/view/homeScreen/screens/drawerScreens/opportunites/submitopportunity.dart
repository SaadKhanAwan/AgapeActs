import 'package:agapeacts/view/auth/widget/button.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/routes/route_name.dart';

class SubmitOpportunity extends StatelessWidget {
  const SubmitOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Submit opportunity"),
      body: Padding(
        padding: EdgeInsets.only(
            top: mheight * .02, left: mwidth * .04, right: mwidth * .04),
        child: ListView(
          children: [
            CustomTextField(
              hintText: "title of opportunity",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Organization Request volinters",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Describtion of  volinters",
              height: mheight * .09,
              borderRadius: 30,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            const Text(
              "Select date",
              style: kActstitle,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "13/2/2021 ",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: "start time",
                    height: mheight * .03,
                    borderRadius: 40,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: CustomTextField(
                    hintText: "End time",
                    height: mheight * .03,
                    borderRadius: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mheight * .02,
            ),
            const Text(
              "Address",
              style: kActstitle,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Address line 1",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Address line 1(Opptional)",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: "City name",
                    height: mheight * .03,
                    borderRadius: 40,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: CustomTextField(
                    hintText: "State name",
                    height: mheight * .03,
                    borderRadius: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "ZipCode",
              height: mheight * .03,
              borderRadius: 40,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            const Text(
              "List of oppoutunity Requiremnet",
              style: kActstitle,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Personal vehical",
              height: mheight * .03,
              borderRadius: 40,
              sufixIcon: Icons.add,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            const Text(
              "Greate opportunity for",
              style: kActstitle,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            CustomTextField(
              hintText: "Teenager and Parent",
              height: mheight * .03,
              borderRadius: 40,
              sufixIcon: Icons.add,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            MyAuthButton(
                title: "Submit Oppourtunity",
                onPress: () {
                  Navigator.pushNamed(
                      context, RouteNames.createopportunityScreen);
                }),
            SizedBox(
              height: mheight * .02,
            ),
          ],
        ),
      ),
    );
  }
}
