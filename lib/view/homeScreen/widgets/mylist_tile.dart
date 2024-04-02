import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String discrition;
  final String tralles;
  const MyListTile(
      {super.key,
      required this.title,
      required this.discrition,
      required this.tralles});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return ListTile(
        title: Text(
          title,
          style: khomecommentstyle,
        ),
        subtitle: Text(
          discrition,
          style: khomelistTilediscribtionstyle,
        ),
        trailing: Container(
          width: mwidth * .17,
          height: mheight * .05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade400),
          child: Center(
            child: Text(
              tralles,
            ),
          ),
        ));
  }
}
