import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Notification"),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: mwidth * .075, top: mheight * .02),
            child: const Text(
              "Today",
              style: khomelistTileTitlestyle,
            ),
          ),
          buildlistTile(
              "E2", "David warner commented on your token", " 8h ago"),
          buildlistTile("E3", "jame smith  applaund your token ", " 12h ago"),
          buildlistTile(
              "E4", "David warner commented on your token ", " 1h ago"),
          buildbutton(mwidth * .5, mheight * .01),
          Padding(
            padding: EdgeInsets.only(left: mwidth * .075, top: mheight * .02),
            child: const Text(
              "Yesteday",
              style: khomelistTileTitlestyle,
            ),
          ),
          buildlistTile("E5", "warner commented on your token ", " 13h ago"),
          buildbutton(mwidth * .5, mheight * .009),
          buildlistTile("E6", "John Like  on your token ", " 6h ago"),
          buildlistTile("E7", "willams commented on your token ", " 19h ago"),
          buildbutton(mwidth * .5, mheight * .009),
          Padding(
            padding: EdgeInsets.only(left: mwidth * .075, top: mheight * .02),
            child: const Text(
              "This week",
              style: khomelistTileTitlestyle,
            ),
          ),
          buildlistTile("E2", "warner commented on your token ", " 13h ago"),
          buildbutton(mwidth * .5, mheight * .009),
          buildlistTile("E3", "John Like  on your token ", " 6h ago"),
          buildlistTile("E5", "willams commented on your token ", " 19h ago"),
          buildbutton(mwidth * .5, mheight * .009),
        ],
      ),
    );
  }

  Widget buildbutton(mwith, mheight) {
    return Padding(
      padding: EdgeInsets.only(left: mwith, top: mheight),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(50, 24),
            ),
            child: const Text(
              "Accept",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(50, 24),
            ),
            child: const Text(
              "Cancel",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  buildlistTile(String E, String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, top: 10),
      child: ListTile(
        leading: Image.asset("assets/images/$E.png"),
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w300),
            children: <TextSpan>[
              TextSpan(text: text1, style: homenotificationtitile),
              TextSpan(
                text: text2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
