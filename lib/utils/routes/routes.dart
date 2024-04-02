import 'package:agapeacts/utils/routes/route_name.dart';
import 'package:agapeacts/view/MyPageview/screens/pageviewscreen.dart';
import 'package:agapeacts/view/auth/screens/loginpage.dart';
import 'package:agapeacts/view/auth/screens/signuppage.dart';
import 'package:agapeacts/view/auth/screens/stratpage.dart';
import 'package:agapeacts/view/homeScreen/screens/bottomsheetscreens/appliedopporrtunity.dart';
import 'package:agapeacts/view/homeScreen/screens/bottomsheetscreens/friendrequest.dart';
import 'package:agapeacts/view/homeScreen/screens/bottomsheetscreens/nominationscreen.dart';
import 'package:agapeacts/view/homeScreen/screens/bottomsheetscreens/submitted_acts.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/friends.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/message/messages.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/message/sendmessagescreen.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/nominate_giver.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/notification.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/opportunites/creating_oppourtity.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/opportunites/indiviualoppurtunities.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/opportunites/opportunites.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/opportunites/submitopportunity.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/profilescreen.dart';
import 'package:agapeacts/view/homeScreen/screens/drawerScreens/settingscreen.dart';
import 'package:agapeacts/view/homeScreen/screens/homepage.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/actsofkindness_screen.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/more_badgesscreen.dart';
import 'package:agapeacts/view/homeScreen/screens/viewmoreScreens/more_giver.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.stratScreen:
        return MaterialPageRoute(builder: (_) => const StratPage());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RouteNames.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.actKindnessScreen:
        return MaterialPageRoute(builder: (_) => const ActsofKindnessScreen());
      case RouteNames.morebadgesScreen:
        return MaterialPageRoute(builder: (_) => const Morebadges());
      case RouteNames.moreGiverScreen:
        return MaterialPageRoute(builder: (_) => const MoreGivers());
      case RouteNames.messageScreen:
        return MaterialPageRoute(builder: (_) => MessageScreen());
      case RouteNames.sendmessageScreen:
        return MaterialPageRoute(builder: (_) => const SendMessageScreen());
      case RouteNames.indiviualopportunityScreen:
        return MaterialPageRoute(builder: (_) => const IndividualOpportunity());
      case RouteNames.myopportunityScreen:
        return MaterialPageRoute(builder: (_) => const MyOpportunities());
      case RouteNames.submitopportunityScreen:
        return MaterialPageRoute(builder: (_) => const SubmitOpportunity());
      case RouteNames.createopportunityScreen:
        return MaterialPageRoute(builder: (_) => const CreateOpportunity());
      case RouteNames.myfriendScreen:
        return MaterialPageRoute(builder: (_) => const MyFreinds());
      case RouteNames.nominategiverScreen:
        return MaterialPageRoute(builder: (_) => const NominateGiver());
      case RouteNames.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case RouteNames.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case RouteNames.settingScreen:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case RouteNames.appliedopportunityScreen:
        return MaterialPageRoute(builder: (_) => const AppliedOpportunity());
      case RouteNames.friendrequestScreen:
        return MaterialPageRoute(builder: (_) => const FriendRequest());
      case RouteNames.nominationScreen:
        return MaterialPageRoute(builder: (_) => const NominationScreen());
      case RouteNames.submitedactsScreen:
        return MaterialPageRoute(builder: (_) => const SubmittedActs());
      case RouteNames.pageView:
        return MaterialPageRoute(builder: (_) => const MyPageView());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
