import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/viewmodel/services/drawerviewmodel.dart';
import 'package:flutter/material.dart';

import '../../../utils/routes/route_name.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({
    super.key,
  });
  final DrawerViewModel viewModel = DrawerViewModel();
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Drawer(
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff233347), Color(0xff233347)],
                begin: Alignment.topRight,
                end: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: mheight * .036,
                        left: mwidth * .03,
                        right: mwidth * .09),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0x0fffffff),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.white)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: mwidth * .03,
                            bottom: mheight * .01,
                            top: mheight * .01),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/boxprofile.png",
                              height: mheight * .09,
                              width: mwidth * .19,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: mwidth * .03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: mheight * .008,
                                ),
                                const Text(
                                  "Dark_Emeradls",
                                  style: khomeslectedtextstyle,
                                ),
                                SizedBox(
                                  height: mheight * .008,
                                ),
                                const Text(
                                  "Gorgeia",
                                  style: khomespontaneousstyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mheight * .057,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: viewModel.mylist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            viewModel.mylist[index].title,
                            style: kdrawerstyrle,
                          ),
                          leading: viewModel.mylist[index].icon,
                          iconColor: AppColors.white,
                          onTap: () {
                            viewModel.navigateTo(context, index);
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: mheight * .018),
                    child: Row(
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RouteNames.settingScreen);
                          },
                          label: const Text(
                            "Settings",
                            style: kdrawerstyrle,
                          ),
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "|",
                          style: kdrawerstyrle,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: const Text(
                            "Logout ",
                            style: kdrawerstyrle,
                          ),
                          icon: const Icon(
                            Icons.logout_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
