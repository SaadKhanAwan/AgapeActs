import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/res/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback? ontab;
  final String title;
  const HomeAppBar({super.key, required this.title, this.ontab});

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Container(
      height: mheight / 5,
      decoration: const BoxDecoration(color: AppColors.red),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: mheight * 0.027,
                right: mwidth * 0.015,
                left: mwidth * 0.015),
            child: ListTile(
              leading: GestureDetector(
                onTap: ontab,
                child: Image.asset(
                  "assets/images/homeicon.png",
                  height: mheight * 0.03,
                ),
              ),
              title: Center(child: Text(title, style: khometitletextstyle)),
              trailing: const Icon(
                Icons.more_vert,
                color: AppColors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mwidth * 0.04),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(mheight * 0.04),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    hintText: 'Search Here...',
                    hintStyle: const TextStyle(color: AppColors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(mheight * 0.04),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: mheight * 0.01),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: mheight * 0.02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
