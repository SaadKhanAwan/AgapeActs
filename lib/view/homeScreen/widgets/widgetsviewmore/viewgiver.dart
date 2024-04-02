import 'package:agapeacts/models/pageview_model.dart';
import 'package:agapeacts/utils/routes/route_name.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/viewmodel/services/viewmoregiver.dart';

import 'package:flutter/material.dart';

class GiversListView extends StatelessWidget {
  const GiversListView({super.key});
  @override
  Widget build(BuildContext context) {
    final TopGiverVViewModel topgiver = TopGiverVViewModel();

    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: topgiver.myList.length,
        itemBuilder: (context, index) {
          MyPageViewModel mymodel = topgiver.myList[index];
          return Card(
            color: const Color(0xffFCFCFC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Image.asset(mymodel.imageUrl),
              title: Text(
                mymodel.title,
                style: khomeTopGiverTitleStyle,
              ),
              subtitle: Text(
                mymodel.discribtion,
                style: khomeTopGiversubTitleStyle,
              ),
              trailing: SizedBox(
                width: mwidth * 0.35,
                height: mheight * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.profileScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC60000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "View Profile",
                    style: khomemorelistviwbuttonstyle,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
