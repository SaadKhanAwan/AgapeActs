import 'package:agapeacts/models/pageview_model.dart';
import 'package:agapeacts/utils/routes/route_name.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/viewmodel/services/viewmorebadge.dart';
import 'package:flutter/material.dart';

class BadgesListView extends StatelessWidget {
  const BadgesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final TopBadgeVViewModel topbadge = TopBadgeVViewModel();

    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;

    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: topbadge.mylist.length,
        itemBuilder: (context, index) {
          MyPageViewModel mymodel = topbadge.mylist[index];
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
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded corners
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
