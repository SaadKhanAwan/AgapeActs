import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/view/homeScreen/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

class SendMessageScreen extends StatelessWidget {
  const SendMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Kayle Smimth"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: mheight * .02,
                      left: mwidth * .05,
                      right: mwidth * .01),
                  child: Row(
                    children: [
                      Image.asset("assets/images/E2.png"),
                      SizedBox(
                        width: mwidth * .02,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: mwidth * .7,
                        height: mheight * .11,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14)),
                        child: const Center(
                          child: Text(
                            "Nice to see you today,Hope you will be well",
                            style: khomesendmessagestyle,
                            maxLines: null,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: mwidth * .2, top: mheight * .01),
                  child: const Text(
                    "3:42Pm",
                    style: khomemessagetimestyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: mheight * .02,
                      left: mwidth * .05,
                      right: mwidth * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: mwidth * .7,
                        height: mheight * .11,
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(14)),
                        child: const Center(
                          child: Text(
                            "Nice to see you today,Hope you will be well",
                            maxLines: null,
                            style: khomemymessagestyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: mwidth * .02,
                      ),
                      Image.asset("assets/images/E5.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: mheight * .014,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/R4.png"),
                    Image.asset("assets/images/R2.png")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/R2.png"),
                    Stack(
                      children: [
                        Image.asset("assets/images/R1.png"),
                        Positioned(
                            top: mheight * .06,
                            left: mwidth * .1,
                            child: const Text("+ 25"))
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: mheight * .02,
                      left: mwidth * .05,
                      right: mwidth * .01),
                  child: Row(
                    children: [
                      Image.asset("assets/images/E2.png"),
                      SizedBox(
                        width: mwidth * .02,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: mwidth * .7,
                        height: mheight * .11,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(14)),
                        child: const Center(
                          child: Text(
                            "Nice to see you today,Hope you will be well",
                            maxLines: null,
                            style: khomesendmessagestyle,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: mwidth * .2,
                    top: mheight * .01,
                  ),
                  child: const Text(
                    "3:42Pm",
                    style: khomemessagetimestyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: CustomTextField(
                      hintText: "Type a messgae",
                      height: mheight * .010,
                      prefixIcon: Icons.emoji_emotions,
                      sufixIcon: Icons.camera_alt,
                      borderRadius: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: MaterialButton(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 5, left: 10),
                    shape: const CircleBorder(),
                    minWidth: 0,
                    color: AppColors.red,
                    onPressed: () {},
                    child: const Icon(
                      Icons.send,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
