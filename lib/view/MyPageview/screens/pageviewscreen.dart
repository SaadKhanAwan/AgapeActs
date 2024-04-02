import 'package:agapeacts/view/MyPageview/widget/pageviewdata.dart';
import 'package:agapeacts/viewmodel/services/pageviewservices.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageviewServices pageviewservices = PageviewServices();
  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    final mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          controller: pageviewservices.controller,
          itemCount: pageviewservices.mydata.length,
          itemBuilder: (BuildContext context, index) {
            return PageViewData.buildData(
                mheight,
                mwidth,
                pageviewservices.mydata[index],
                pageviewservices,
                pageviewservices.currentPage,
                index,
                pageviewservices.controller);
          },
          onPageChanged: (int page) {
            setState(() {
              pageviewservices.onPageChanged(page);
            });
          }),
    );
  }
}
