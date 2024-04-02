import 'package:agapeacts/models/groupiversmodel.dart';

class BadgeViewModel {
  final List _myGroup = [
    MyGroupGiverModel(
      imageUrl: "assets/images/Group6.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group7.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group8.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group9.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group10.png",
    ),
  ];
  List get myList => _myGroup;
}
