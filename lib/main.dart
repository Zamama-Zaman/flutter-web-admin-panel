import 'package:duplex_pro_web_app_dashboard/presentation/pages/home_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_category_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duplex play web app dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        ManageCategoryPage.id: (context) => ManageCategoryPage(),
        ManageItemPage.id: (context) => ManageItemPage(),
      },
    );
  }
}
