import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class ViewComment extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String title2;
  final String subttile;
  final Icon myicon;
  const ViewComment(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.title2,
      required this.subttile,
      required this.myicon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: RichText(
        text: TextSpan(
          // style: mtextstyle2,
          children: <TextSpan>[
            TextSpan(text: title, style: khomecommentlistTitle1style),
            TextSpan(text: title2, style: khomecommentlistTitle2style),
          ],
        ),
      ),
      subtitle: Text(subttile),
      trailing: myicon,
    );
  }
}
