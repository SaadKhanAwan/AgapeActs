import 'package:agapeacts/view/homeScreen/widgets/constants.dart';
import 'package:agapeacts/res/colors.dart';
import 'package:flutter/material.dart';

class HomeTwoContainers extends StatefulWidget {
  const HomeTwoContainers({super.key});

  @override
  State<HomeTwoContainers> createState() => _HomeTwoContainersState();
}

class _HomeTwoContainersState extends State<HomeTwoContainers> {
  bool isSelected = true;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: toggleSelection,
          child: Container(
            decoration: BoxDecoration(
                color: isSelected ? AppColors.red : const Color(0xffCCCCCC),
                borderRadius: BorderRadius.circular(8)),
            height: mheight * 0.07,
            width: mwidth * 0.4,
            child: Center(
              child: Text(
                "Friends",
                textAlign: TextAlign.center,
                style: isSelected
                    ? khomeslectedtextstyle
                    : khomenotslectedtextstyle,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: toggleSelection,
          child: Container(
            height: mheight * 0.07,
            width: mwidth * 0.4,
            decoration: BoxDecoration(
                color: !isSelected ? AppColors.red :const Color(0xffCCCCCC),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "All Members",
                textAlign: TextAlign.center,
                style: !isSelected
                    ? khomeslectedtextstyle
                    : khomenotslectedtextstyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
