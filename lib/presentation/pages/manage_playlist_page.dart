// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:duplex_pro_web_app_dashboard/constants.dart';
import 'package:flutter/material.dart';

class ManagePlaylistPage extends StatefulWidget {
  static const String id = "manage-playlist-page";

  const ManagePlaylistPage({Key? key}) : super(key: key);

  @override
  State<ManagePlaylistPage> createState() => _ManagePlaylistPageState();
}

class _ManagePlaylistPageState extends State<ManagePlaylistPage> {
  bool isShowManagePlaylistBaseline = false;
  bool isShowActivationForDeviceBaseline = false;
  bool isShowActiviationByDeviceBaseline = false;
  bool isShowGiftCodesBaseline = false;
  bool isShowActivateDeviceByGiftCodeBaseline = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight / 9),
        child: Container(
          height: screenHeight / 9,
          color: Constants.kBlackColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              Text(
                "Manage Playlists",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // height: screenHeight / 6.5,
              // width: screenWidth / 2.2,
              height: 100,
              width: 600,
              decoration: BoxDecoration(
                color: Constants.kBlueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(),
                      Text(
                        "Device 96:5C:86:A2:4A:D0",
                        style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: 21,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 225,
                        decoration: BoxDecoration(
                          color: Constants.kWhiteColor,
                          border: Border.all(
                            color: Constants.kBlackColor,
                            width: .5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings,
                                color: Constants.kBlueColor,
                              ),
                            ),
                            SizedBox(width: screenWidth / 80),
                            Text("Manage another device"),
                          ],
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(height: screenHeight / 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "Status: Expired",
                        style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          color: Constants.kYellowColor,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        "Expiration: 31-Mar-2022 12:10 PM",
                        style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight / 80),
            Wrap(
              alignment: WrapAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShowManagePlaylistBaseline = value;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Manage playlists",
                      style: TextStyle(
                        decoration: isShowManagePlaylistBaseline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Constants.kBlueColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 20,
                    color: Constants.kBlueColor,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShowActivationForDeviceBaseline = value;
                    });
                  },
                  hoverColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Activation for this device",
                      style: TextStyle(
                        decoration: isShowActivationForDeviceBaseline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Constants.kBlueColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 20,
                    color: Constants.kBlueColor,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShowActiviationByDeviceBaseline = value;
                    });
                  },
                  hoverColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Activations by the device",
                      style: TextStyle(
                        decoration: isShowActiviationByDeviceBaseline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Constants.kBlueColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 20,
                    color: Constants.kBlueColor,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShowGiftCodesBaseline = value;
                    });
                  },
                  hoverColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Gift Codes",
                      style: TextStyle(
                        decoration: isShowGiftCodesBaseline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Constants.kBlueColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 20,
                    color: Constants.kBlueColor,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isShowActivateDeviceByGiftCodeBaseline = value;
                    });
                  },
                  hoverColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Activate Device by Gift Codes",
                      style: TextStyle(
                        decoration: isShowActivateDeviceByGiftCodeBaseline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        color: Constants.kBlueColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                height: 40,
                width: 110,
                color: Colors.blue,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.ac_unit),
                    ),
                    Text("Something"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
