// ignore_for_file: prefer_const_constructors
import 'package:duplex_pro_web_app_dashboard/presentation/pages/device_manage_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/home_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_category_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_item_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_playlist_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black87,
        ),
      ),
      // home: HomePage(),
      initialRoute: DeviceManagePage.id,
      routes: {
        ManagePlaylistPage.id: (context) => ManagePlaylistPage(),
        DeviceManagePage.id: (context) => DeviceManagePage(),
        // HomePage.id: (context) => HomePage(),
        // ManageCategoryPage.id: (context) => ManageCategoryPage(),
        // ManageItemPage.id: (context) => ManageItemPage(),
      },
    );
  }
}
