// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DeviceManagePage extends StatefulWidget {
  static const String id = "device-manage-page";

  @override
  State<DeviceManagePage> createState() => _DeviceManagePageState();
}

class _DeviceManagePageState extends State<DeviceManagePage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage Device",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.ac_unit),
        actions: [
          Icon(Icons.ac_unit),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight / 15),
              Container(
                height: screenHeight / 1.6,
                width: screenWidth / 4,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: .5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.blue.shade700,
                      child: Center(
                        child: Text(
                          "Device",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Device ID"),
                    ),
                    SizedBox(height: screenHeight / 80),
                    Container(
                      width: double.infinity,
                      height: screenHeight / 25,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.zero,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                            borderRadius: BorderRadius.zero,
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Device Key"),
                          Row(
                            children: [
                              Transform.scale(
                                scale: .6,
                                child: Checkbox(
                                  value: isChecked,
                                  onChanged: (val) {
                                    setState(() {
                                      isChecked = val;
                                    });
                                  },
                                ),
                              ),
                              Text("Show"),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight / 80),
                    Container(
                      width: double.infinity,
                      height: screenHeight / 25,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextField(
                        obscureText: !isChecked!,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.zero,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                            borderRadius: BorderRadius.zero,
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 15),
              Text(
                "Disclaimer: DuplexPlay does not include any content. You have to upload you won playlists. The developers of DuplexPlay are not responsible for the content you upload to the application",
              ),
              SizedBox(height: screenHeight / 80),
              Text(
                "Please don't ask about how to get playlist. We don't sell playlist or subscription!",
              ),
              SizedBox(height: screenHeight / 80),
              Text(
                "Looking for more information? Visit DuplexPlay website",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
