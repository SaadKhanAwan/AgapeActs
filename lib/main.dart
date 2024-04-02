import 'package:agapeacts/res/colors.dart';
import 'package:agapeacts/utils/routes/route_name.dart';
import 'package:agapeacts/utils/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.red,
        foregroundColor: AppColors.white,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 4,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      )),
      initialRoute: RouteNames.stratScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
