// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_category_page.dart';
import 'package:duplex_pro_web_app_dashboard/presentation/pages/manage_playlist_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DeviceManagePage extends StatefulWidget {
  static const String id = "device-manage-page";

  @override
  State<DeviceManagePage> createState() => _DeviceManagePageState();
}

class _DeviceManagePageState extends State<DeviceManagePage> {
  bool? isChecked = false;
  bool showBaseLine = false;

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
                width: screenWidth / 3.8,
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
                    SizedBox(height: screenHeight / 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Device ID"),
                    ),
                    SizedBox(height: screenHeight / 60),
                    Container(
                      width: double.infinity,
                      height: screenHeight / 25,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
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
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Device Key"),
                          Row(
                            children: [
                              Transform.scale(
                                scale: .7,
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  value: isChecked,
                                  splashRadius: 0.0,
                                  onChanged: (val) {
                                    setState(() {
                                      isChecked = val;
                                    });
                                  },
                                ),
                              ),
                              Text(isChecked! ? "Hide" : "Show"),
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
                        horizontal: 10,
                      ),
                      child: TextField(
                        obscureText: !isChecked!,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                            borderRadius: BorderRadius.zero,
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 60),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: screenHeight / 7,
                        width: double.infinity,
                        color: Colors.green,
                        child: Center(
                          child: Text("Chepta"),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, ManagePlaylistPage.id);
                          Navigator.of(context)
                              .pushNamed(ManagePlaylistPage.id);
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          height: screenHeight / 15,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: .5,
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.settings, color: Colors.blue),
                                Text("Manage Device"),
                                SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 50),
                    Center(
                      child: Text(
                        "Enter Device ID & Key to manage playlists",
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
                style: TextStyle(
                  color: Colors.red.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight / 80),
              RichText(
                text: TextSpan(
                  text: 'Looking for more information? Visit ',
                  children: <InlineSpan>[
                    TextSpan(
                      mouseCursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        setState(() {
                          showBaseLine = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          showBaseLine = false;
                        });
                      },
                      text: 'DuplexPlay website',
                      style: TextStyle(
                        decoration: showBaseLine
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Colors.blue,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ],
                ),
              ),
              //   Text(
              //   "Looking for more information? Visit DuplexPlay website",
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
