// ignore_for_file: prefer_const_constructors

import 'package:duplex_pro_web_app_dashboard/presentation/pages/dashboard_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_category_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class HomePage extends StatefulWidget {
  static const String id = "home-page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _selectedScreen = DashboardPage();
  currentPage(item) {
    switch (item.route) {
      case DashboardPage.id:
        setState(() {
          _selectedScreen = DashboardPage();
        });
        break;
      case ManageCategoryPage.id:
        setState(() {
          _selectedScreen = ManageCategoryPage();
        });
        break;
      case ManageItemPage.id:
        setState(() {
          _selectedScreen = ManageItemPage();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: const Text('Admin Panel'),
        ),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardPage.id,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Manage Category',
            route: ManageCategoryPage.id,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Manage Item',
            route: ManageItemPage.id,
            icon: Icons.pages_rounded,
          ),
        ],
        selectedRoute: HomePage.id,
        onSelected: (item) {
          currentPage(item);
          // if (item.route != null) {
          //   Navigator.of(context).pushNamed(item.route!);
          // }
        },
        // header: Container(
        //   height: 50,
        //   width: double.infinity,
        //   color: const Color(0xff444444),
        //   child: const Center(
        //     child: Text(
        //       'header',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        //   footer: Container(
        //     height: 50,
        //     width: double.infinity,
        //     color: const Color(0xff444444),
        //     child: const Center(
        //       child: Text(
        //         'footer',
        //         style: TextStyle(
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
      ),
      body: SingleChildScrollView(
        child: _selectedScreen,
        // Container(
        //   alignment: Alignment.topLeft,
        //   padding: const EdgeInsets.all(10),
        //   child: const Text(
        //     'Dashboard',
        //     style: TextStyle(
        //       fontWeight: FontWeight.w700,
        //       fontSize: 36,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
