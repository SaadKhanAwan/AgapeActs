import 'package:agapeacts/res/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final double? height;
  final double borderRadius;
  final IconData? sufixIcon;

  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.height,
    this.borderRadius = 12,
    this.onChanged,
    this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: height as double),
            filled: true,
            fillColor: AppColors.white,
            hintText: hintText,
            suffixIcon: Icon(sufixIcon),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.white),
              borderRadius: BorderRadius.circular(
                  borderRadius), // Changed color to 0xffFFFFFF
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.halfwhite),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.halfwhite),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            prefixIcon: Icon(
              prefixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
