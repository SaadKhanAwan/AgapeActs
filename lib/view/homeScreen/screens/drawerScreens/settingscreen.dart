import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/appbar.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(title: "Settings"),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: mheight * .02,
            ),
            DottedBorder(
              padding: const EdgeInsets.all(10),
              strokeWidth: 4,
              dashPattern: const [10, 22],
              borderType: BorderType.Circle,
              color: AppColors.red,
              child: Image.asset(
                "assets/images/E2.png",
                height: mheight * .2,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: mheight * .04),
              child: const Text(
                "Arisha Wastson",
                style: khomeprofileTitlestyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: mwidth * .025),
              child: const Text(
                "Georgia",
                style: khomeprofilesubTitleStyle,
              ),
            ),
            buildTilte(Icons.person_2_rounded, "Accounts",
                "Change your name and profile"),
            const Divider(
              thickness: 2.5,
            ),
            buildTilte(Icons.security_outlined, "Security",
                "Check your privacy and security"),
            const Divider(
              thickness: 2.5,
            ),
            buildTilte(Icons.local_activity_rounded, "Activity",
                "Show your activity and other things"),
            const Divider(
              thickness: 2.5,
            ),
            buildTilte(Icons.help, "Help", "Need any help"),
            const Divider(
              thickness: 2.5,
            )
          ],
        ),
      ),
    );
  }

  buildTilte(IconData icon, title1, title2) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red[200],
        child: Icon(
          icon,
          color: AppColors.red,
        ),
      ),
      title: Text(title1),
      subtitle: Text(title2),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
