import 'package:agapeacts/models/groupiversmodel.dart';
import 'package:agapeacts/viewmodel/services/group_givers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GiverData extends StatelessWidget {
  const GiverData({super.key});

  @override
  Widget build(BuildContext context) {
    GiverViewModel mymodel = GiverViewModel();
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mymodel.myList.length,
        itemBuilder: (context, index) {
          MyGroupGiverModel groupGiver = mymodel.myList[index];
          return Image.asset(groupGiver.imageUrl);
        });
  }
}
