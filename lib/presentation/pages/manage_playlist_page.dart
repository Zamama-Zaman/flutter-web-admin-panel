// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:duplex_pro_web_app_dashboard/constants.dart';
import 'package:duplex_pro_web_app_dashboard/data/models/playlist_model.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/playlist_enity.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  bool showBaseLine = false;

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
                onPressed: () {
                  remoteAccess.getAllPlaylist(userEntity);
                },
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
      body: SingleChildScrollView(
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
                        // "Device 96:5C:86:A2:4A:D0",
                        "Device ${userEntity.deviceId!}",
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
                        // "Expiration: 31-Mar-2022 12:10 PM",
                        "Expiration: ${DateFormat("dd MMM hh:mm a").format(userEntity.activationEndAt!.toDate())}",
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
                decoration: BoxDecoration(
                  color: Constants.kWhiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Constants.kBlackColor,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    showCustomDialog(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Constants.kBlueColor,
                        size: 24,
                      ),
                      SizedBox(width: 2),
                      Text("Add playlist"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 80),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 60),
            //   width: double.infinity,
            //   height: 50,
            //   decoration: BoxDecoration(
            //     color: Constants.kBlueColor,
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 5),
            //       Icon(
            //         Icons.ac_unit,
            //         color: Constants.kWhiteColor,
            //         size: 30,
            //       ),
            //       SizedBox(width: 5),
            //       Text(
            //         "Playlists",
            //         style: TextStyle(
            //           color: Constants.kWhiteColor,
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              width: double.infinity,
              height: 50,
              color: Constants.kBlueColor,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Playlist Name",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Constants.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: Text(
                        "Uri",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Constants.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: Text(
                        "Action",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Constants.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
                // height: screenHeight / 2.6,
                height: screenHeight / 2.6,
                width: screenWidth,
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: StreamBuilder<List<PlaylistEntity>>(
                    stream: remoteAccess.getAllPlaylist(userEntity),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length ?? 0,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            // margin: EdgeInsets.symmetric(horizontal: 60),
                            width: double.infinity,
                            height: 50,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      snapshot.data?[index].playlistName! ?? "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    color: Colors.transparent,
                                    alignment: Alignment.center,
                                    child: Text(
                                      snapshot.data?[index].playlistUrl! ?? "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.transparent,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Constants.kBlueColor,
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons.edit,
                                          ),
                                          label: Text('Edit'),
                                        ),
                                        SizedBox(width: 5),
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            remoteAccess.deleteSinglePlaylist(
                                                userEntity,
                                                snapshot.data![index]
                                                    .playlistDocumentId!);
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Constants.kBlueColor,
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons.delete,
                                          ),
                                          label: Text('Delete'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    })),
            SizedBox(height: screenHeight / 50),
            Text(
              "Disclaimer: DuplexPlay does not include any content. You have to upload you won playlists. The developers of DuplexPlay are not responsible for the content you upload to the application",
              textAlign: TextAlign.center,
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
    );
  }
}

void showCustomDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Playlist",
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.1),
    // transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return AddPlaylistPopup();
    },
  );
}

class AddPlaylistPopup extends StatefulWidget {
  const AddPlaylistPopup({Key? key}) : super(key: key);

  @override
  State<AddPlaylistPopup> createState() => _AddPlaylistPopupState();
}

class _AddPlaylistPopupState extends State<AddPlaylistPopup> {
  bool isChecked = false;

  TextEditingController playlistNameController = TextEditingController();
  TextEditingController playlistUriController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    playlistNameController.dispose();
    playlistUriController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 700,
        width: 600,
        margin: EdgeInsets.only(top: 35),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black, width: .5),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Playlist",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Constants.kBlueColor,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Playlist name"),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 25,
                  child: TextField(
                    controller: playlistNameController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Playlist URL (.M3U or .M3U8)"),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 8,
                  child: TextField(
                    controller: playlistUriController,
                    maxLines: 7,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      contentPadding: EdgeInsets.only(top: 10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("XMLTV EPG Url (Optional)"),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 15,
                  child: TextField(
                    maxLines: 7,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      contentPadding: EdgeInsets.only(top: 10),
                    ),
                  ),
                ),
                StatefulBuilder(
                  builder: (context, setState) => Row(
                    children: [
                      Transform.scale(
                        scale: .8,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          value: isChecked,
                          splashRadius: 0.0,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Protect this playlist",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 31.0),
                  child: Text(
                    "Protected playlists will not be viewed or modified without entering PIN",
                    style: TextStyle(
                      color: Constants.kGreenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("PIN"),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 6.6),
                            Row(
                              children: [
                                StatefulBuilder(
                                  builder: (context, setState) => Row(
                                    children: [
                                      Transform.scale(
                                        scale: .7,
                                        child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          value: isChecked,
                                          splashRadius: 0.0,
                                          onChanged: (val) {
                                            setState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                      Text(
                                        isChecked ? "Hide" : "Show",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7),
                        Text("Confirm PIN"),
                        SizedBox(height: 8),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 7,
                    width: double.infinity,
                    color: Colors.green,
                    child: Center(
                      child: Text("Chepta"),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        PlaylistEntity _playlistEntity = PlaylistEntity(
                          playlistName: playlistNameController.text.toString(),
                          playlistUrl: playlistUriController.text.toString(),
                        );
                        remoteAccess.addPlaylist(
                          userEntity,
                          _playlistEntity,
                        );
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                              color: Constants.kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Constants.kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
