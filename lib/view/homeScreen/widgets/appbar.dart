import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final mwidth = MediaQuery.of(context).size.width;

    return AppBar(
      title: Text(title),
      leading: Padding(
        padding: EdgeInsets.only(right: mwidth * 0.035, left: mwidth * 0.035),
        child: Image.asset(
          "assets/images/homeicon.png",
        ),
      ),
      actions: const [Icon(Icons.more_vert)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
