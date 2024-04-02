import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/homeuppercontainer.dart';
import 'package:flutter/material.dart';
import 'package:agapeacts/models/friends_model.dart';
import 'package:agapeacts/viewmodel/services/friends_data.dart';

class MyFreinds extends StatelessWidget {
  const MyFreinds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.halfwhite,
      body: Column(children: [
        const HomeAppBar(title: "Friends"),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 7,
                childAspectRatio: 2.4,
              ),
              itemCount: FriendViewModel().mylist.length,
              itemBuilder: (BuildContext context, int index) {
                MyFriendsModel item = FriendViewModel().mylist[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(item.imageUrl),
                          Text(item.title),
                        ],
                      )),
                );
              }),
        )
      ]),
    );
  }
}
