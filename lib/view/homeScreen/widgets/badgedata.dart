import 'package:agapeacts/models/groupiversmodel.dart';
import 'package:agapeacts/viewmodel/services/groupb_adges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BadgeData extends StatelessWidget {
  const BadgeData({super.key});

  @override
  Widget build(BuildContext context) {
    BadgeViewModel mymodel = BadgeViewModel();
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mymodel.myList.length,
        itemBuilder: (context, index) {
          MyGroupGiverModel groupGiver = mymodel.myList[index];
          return Image.asset(groupGiver.imageUrl);
        });
  }
}
