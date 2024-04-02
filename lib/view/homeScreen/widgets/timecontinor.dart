import 'package:agapeacts/res/colors.dart';
import 'package:flutter/material.dart';

class TimeContainer extends StatefulWidget {
  const TimeContainer({super.key});

  @override
  State<TimeContainer> createState() => _TimeContainerState();
}

class _TimeContainerState extends State<TimeContainer> {
  String selectedOption = 'Day';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: buildContainer('Day')),
        Expanded(child: buildContainer('Week')),
        Expanded(child: buildContainer('Month')),
        Expanded(child: buildContainer('All')),
      ],
    );
  }

  Widget buildContainer(String option) {
    bool isSelected = option == selectedOption;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option;
        });
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffFCFCFC),
          border: Border.all(color: isSelected ? AppColors.red : Colors.white),
          borderRadius: isSelected ? BorderRadius.circular(8) : null,
        ),
        child: Text(
          textAlign: TextAlign.center,
          option,
          style: TextStyle(
            color: isSelected ? AppColors.red : AppColors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
