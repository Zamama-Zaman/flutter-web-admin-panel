// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const String id = "dashboard-page";

  @override
  Widget build(BuildContext context) {
    Widget analyticWidget({required String title, required String value}) {
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value),
                    Icon(Icons.show_chart),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        analyticWidget(title: "Total User", value: "0"),
        analyticWidget(title: "Total Category", value: "0"),
        analyticWidget(title: "Total Item", value: "0"),
      ],
    );
  }
}
