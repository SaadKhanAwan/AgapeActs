import 'package:agapeacts/models/groupiversmodel.dart';

class GiverViewModel {
  final List _myGroup = [
    MyGroupGiverModel(
      imageUrl: "assets/images/Group1.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group2.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group3.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group4.png",
    ),
    MyGroupGiverModel(
      imageUrl: "assets/images/Group5.png",
    ),
  ];
  List get myList => _myGroup;
}
