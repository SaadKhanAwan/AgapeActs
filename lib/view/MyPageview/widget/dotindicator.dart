import 'package:agapeacts/viewmodel/services/pageviewservices.dart';
import 'package:flutter/material.dart';

class Dotindecaot {
  static buildDotsIndicator(PageviewServices pageviewservices, currentPage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageviewservices.mydata.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == currentPage ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
