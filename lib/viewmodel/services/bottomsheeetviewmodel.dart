import 'package:agapeacts/models/btoomsheet_model.dart';
import 'package:agapeacts/res/colors.dart';
import 'package:flutter/material.dart';
import '../../utils/routes/route_name.dart';

class BottomSheetViewModel {
  final List<BottomSheetItems> mylist = [
    BottomSheetItems(
        icon: const Icon(
          Icons.person_pin_rounded,
          color: AppColors.red,
        ),
        title: "Nominate"),
    BottomSheetItems(
        icon: const Icon(Icons.group, color: AppColors.red), title: "Friend"),
    BottomSheetItems(
        icon: const Icon(Icons.comment, color: AppColors.red),
        title: "Messages"),
    BottomSheetItems(
        icon: const Icon(Icons.notification_add, color: AppColors.red),
        title: "Notifications"),
    BottomSheetItems(
        icon: const Icon(Icons.lightbulb_rounded, color: AppColors.red),
        title: "Opportunities"),
    BottomSheetItems(
        icon: const Icon(Icons.thumb_up_alt_outlined, color: AppColors.red),
        title: "Recommendations"),
  ];

  void navigateTo(BuildContext context, int index) {
    // Handle navigation based on the selected item index
    switch (index) {
      case 0:
        // Navigate to Page 1
        Navigator.pushNamed(context, RouteNames.nominationScreen);
        break;
      case 1:
        Navigator.pushNamed(context, RouteNames.friendrequestScreen);
        break;
      // Add more cases for additional items
      case 2:
        Navigator.pushNamed(context, RouteNames.messageScreen);
        break;
      case 3:
        Navigator.pushNamed(context, RouteNames.notificationScreen);
        break;
      case 4:
        Navigator.pushNamed(context, RouteNames.appliedopportunityScreen);
        break;
      case 5:
        Navigator.pushNamed(context, RouteNames.submitedactsScreen);
        break;
      default:
        break;
    }
  }
}
