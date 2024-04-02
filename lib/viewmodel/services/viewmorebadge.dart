import 'package:agapeacts/models/pageview_model.dart';

class TopBadgeVViewModel {
  final List _mydata = [
    MyPageViewModel(
        imageUrl: "assets/images/E6.png",
        title: "Jones Jackson",
        discribtion: "12Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E7.png",
        title: "Ammey Rabem",
        discribtion: "3 Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E2.png",
        title: "Kame Projects",
        discribtion: "20 Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E3.png",
        title: "Rambo martin",
        discribtion: "7 Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E4.png",
        title: "Appla uson",
        discribtion: "9 Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E5.png",
        title: "Agape emily",
        discribtion: "4 Agape Tokens"),
    MyPageViewModel(
        imageUrl: "assets/images/E1.png",
        title: "Jordge Watton",
        discribtion: "10 Agape Tokens"),
  ];

  List get mylist => _mydata;
}
