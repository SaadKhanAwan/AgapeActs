import 'package:flutter/material.dart';
import 'package:agapeacts/viewmodel/services/bottomsheeetviewmodel.dart';

class MyBottomSheet extends StatelessWidget {
  MyBottomSheet({super.key});
  final BottomSheetViewModel viewModel = BottomSheetViewModel();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: viewModel.mylist.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        final item = viewModel.mylist[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xffF8E0E0),
            child: item.icon,
          ),
          title: Text(item.title),
          onTap: () {
            viewModel.navigateTo(context, index);
          },
        );
      },
    );
  }
}
