import 'package:agapeacts/models/drawermodel.dart';
import 'package:flutter/material.dart';
import '../../utils/routes/route_name.dart';

class DrawerViewModel {
  final List<MyDrawerItems> mylist = [
    MyDrawerItems(icon: const Icon(Icons.home), title: "Home"),
    MyDrawerItems(icon: const Icon(Icons.person), title: "Profile"),
    MyDrawerItems(
        icon: const Icon(Icons.person_pin_rounded), title: "Nominate"),
    MyDrawerItems(icon: const Icon(Icons.group), title: "Friend"),
    MyDrawerItems(icon: const Icon(Icons.comment), title: "Messages"),
    MyDrawerItems(
        icon: const Icon(Icons.notification_add), title: "Notifications"),
    MyDrawerItems(
        icon: const Icon(Icons.lightbulb_rounded), title: "Opportunities"),
  ];

  void navigateTo(BuildContext context, int index) {
    // Handle navigation based on the selected item index
    switch (index) {
      case 0:
        // Navigate to Page 1
        Navigator.pushNamed(context, RouteNames.homeScreen);
        break;
      case 1:
        Navigator.pushNamed(context, RouteNames.profileScreen);
        break;
      // Add more cases for additional items
      case 2:
        Navigator.pushNamed(context, RouteNames.nominategiverScreen);
        break;
      case 3:
        Navigator.pushNamed(context, RouteNames.myfriendScreen);
        break;
      case 4:
        Navigator.pushNamed(context, RouteNames.messageScreen);
        break;
      case 5:
        Navigator.pushNamed(context, RouteNames.notificationScreen);
        break;

      case 6:
        Navigator.pushNamed(context, RouteNames.myopportunityScreen);
        break;
      default:
        break;
    }
  }
}
