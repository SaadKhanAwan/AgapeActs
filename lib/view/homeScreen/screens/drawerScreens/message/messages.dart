import 'package:agapeacts/models/pageview_model.dart';
import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/viewmodel/services/messageviewmodel.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/routes/route_name.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final MessageViewModel model = MessageViewModel();
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Messages"),
      body: ListView.builder(
        itemCount: model.mylist.length,
        itemBuilder: (context, index) {
          MyPageViewModel data = model.mylist[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.sendmessageScreen);
              },
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1.0,
                      )
                    ],
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: ListTile(
                  leading: Stack(
                    children: [
                      Image.asset(data.imageUrl),
                      Positioned(
                          top: mheight * .001,
                          right: mwidth * .01,
                          child: Container(
                            height: mheight * .01,
                            width: mwidth * .022,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: index % 2 == 0
                                  ? AppColors.green
                                  : AppColors.orange,
                            ),
                          ))
                    ],
                  ),
                  title: Text(
                    data.title,
                    style: khomelistTileTitlestyle,
                  ),
                  subtitle: Text(
                    data.discribtion,
                    style: khomeTopGiversubTitleStyle,
                  ),
                  trailing: const Text(
                    "12:00 pm",
                    style: khomeTopGiversubTitleStyle,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
