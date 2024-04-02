import 'package:agapeacts/models/pageview_model.dart';
import 'package:agapeacts/view/MyPageview/widget/dotindicator.dart';
import 'package:agapeacts/view/MyPageview/widget/pagevewcontants.dart';
import 'package:agapeacts/view/MyPageview/widget/pageviewbutton.dart';
import 'package:agapeacts/view/MyPageview/widget/uppercontainer.dart';
import 'package:agapeacts/viewmodel/services/pageviewservices.dart';
import 'package:flutter/material.dart';

class PageViewData {
  static buildData(
      mheight,
      mwidth,
      MyPageViewModel page,
      PageviewServices pageviewservices,
      currentPage,
      index,
      PageController pageController) {
    return ListView(
      children: [
        Stack(
          children: [
            const UpperContainerPageView(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: mheight * 0.14,
                      right: mwidth * .05,
                      left: mwidth * .05),
                  child: Image.asset(
                    page.imageUrl,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: mheight * .02,
        ),
        Dotindecaot.buildDotsIndicator(pageviewservices, currentPage),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mheight * .02,
            ),
            Text(
              page.title,
              style: kPageviewTitleTextStyle,
            ),
            SizedBox(
              height: mheight * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                page.discribtion,
                maxLines: null,
                textAlign: TextAlign.center,
                style: kPageviewDiscribtionTextStyle,
              ),
            ),
            SizedBox(
              height: mheight * .037,
            ),
            MyPageViewButton(
                title: index == 6 ? "Explore Agape" : "Continue",
                pageController: pageController,
                onPress: () {})
          ],
        )
      ],
    );
  }
}
