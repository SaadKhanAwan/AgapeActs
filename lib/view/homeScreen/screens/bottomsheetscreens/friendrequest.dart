import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:flutter/material.dart';

class FriendRequest extends StatelessWidget {
  const FriendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Friend Requests"),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: mwidth * .075, top: mheight * .02),
            child: const Row(
              children: [
                Text(
                  "Freinds Request",
                  style: khomelistTileTitlestyle,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "252",
                  style: TextStyle(
                      color: AppColors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          buildlistTile("E2", "Sam Curan", "7 mutal friends"),
          buildbutton(mwidth * .05, mheight * .001),
          buildlistTile("E3", "Aarya Strak", "7 mutal friends"),
          buildbutton(mwidth * .05, mheight * .001),
          buildlistTile("E4", "Jane smith", "7 mutal friends"),
          buildbutton(mwidth * .05, mheight * .001),
          buildlistTile("E5", "Shane Strac", "7 mutal friends"),
          buildbutton(mwidth * .05, mheight * .001),
          buildlistTile("E6", "Niki Cross", "7 mutal friends"),
          buildbutton(mwidth * .05, mheight * .001),
        ],
      ),
    );
  }

  buildlistTile(String E, String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, top: 10),
      child: ListTile(
        leading: Image.asset(
          "assets/images/$E.png",
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          text1,
          style: khomelistTileTitlestyle,
        ),
        subtitle: Text(
          text2,
          style: const TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  Widget buildbutton(mwith, mheight) {
    return Padding(
      padding: EdgeInsets.only(left: mwith, top: mheight, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              backgroundColor: Colors.red,
              minimumSize: const Size(120, 40),
            ),
            child: const Text(
              "Confirm",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              backgroundColor: Colors.white,
              minimumSize: const Size(120, 40),
            ),
            child: const Text(
              "Delete",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
