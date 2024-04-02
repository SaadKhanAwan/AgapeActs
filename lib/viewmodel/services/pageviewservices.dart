import 'package:agapeacts/models/pageview_model.dart';
import 'package:flutter/material.dart';

class PageviewServices {
  final PageController controller = PageController();
  int _currentPage = 0;

  int get currentPage => _currentPage;

  List mydata = [
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle1.png",
        title: "Nominate a Giver",
        discribtion:
            "We want to congratulate the givers in the world and give them recognition for their good deeds. Nominate a giver to show the world their good deeds."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle2.png",
        title: "Give Agape Tokens",
        discribtion:
            "Give you nominee Agape tokens to show your appearance for their acts of kindness. The Agape token is a token of appreciation to say thank you."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle3.png",
        title: "Tell The Story",
        discribtion:
            "Let the world know how great your nominee has been. Explain their acts of kindness, upload videos and images of the good deeds on all its results."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle4.png",
        title: "Give Applaus",
        discribtion:
            "Once your giver receives their  Agape tokens, they can receive an applause from all Agape members. Everyone wants to recognize a job well done."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle5.png",
        title: "Agape",
        discribtion:
            "Agape Badges are given to members that gives the abundantly. Build up your Agape tokens to achieve lifetime achievements badges."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle6.png",
        title: "Agape Gives Community ",
        discribtion:
            "Interact with the Agape Givers Community. You can applaud  acts of kindness, add friends and send kind messages. This community was built to show love."),
    MyPageViewModel(
        imageUrl: "assets/images/Rectangle7.png",
        title: "view opportunity To Give",
        discribtion:
            "Are you looking for an opportunity to make a difference? We provide lists of opportunities so you can assist organizations in your local community."),
  ];

  void onPageChanged(int page) {
    _currentPage = page;
  }
}
