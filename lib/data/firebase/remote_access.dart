import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duplex_pro_web_app_dashboard/constants.dart';
import 'package:duplex_pro_web_app_dashboard/data/models/playlist_model.dart';
import 'package:duplex_pro_web_app_dashboard/data/models/user_model.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/playlist_enity.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/user_entity.dart';

class RemoteAccess {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //* Login from mac and device id
  Future<bool> loginWithMacIDAndDeviceId(UserEntity _userEntity) async {
    DocumentSnapshot _docSnap = await firestore
        .collection("UserMobileAuth")
        .doc(_userEntity.deviceId)
        .get();

    if (_docSnap.exists) {
      if (_docSnap.data()!["deviceId"] == _userEntity.deviceId &&
          _docSnap.data()!["deviceKey"] == _userEntity.deviceKey) {
        userEntity = UserModel.fromSnapshot(_docSnap);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  //* Add Playlist
  Future<void> addPlaylist(
      UserEntity userEntity, PlaylistEntity playlistEntity) async {
    DocumentReference documentReference = firestore
        .collection("UserMobileAuth")
        .doc(userEntity.deviceId)
        .collection("UserPlaylistM3U")
        .doc();

    documentReference.set(PlaylistModel(
      playlistName: playlistEntity.playlistName,
      playlistUrl: playlistEntity.playlistUrl,
      playlistDocumentId: documentReference.id,
      addedDate: Timestamp.now(),
    ).toDocument());
  }

  //* Get All Playlist

  Stream<List<PlaylistEntity>> getAllPlaylist(UserEntity userEntity) {
    CollectionReference collectionReference = firestore
        .collection("UserMobileAuth")
        .doc(userEntity.deviceId)
        .collection("UserPlaylistM3U");

    return collectionReference.snapshots().map((querySnapshot) {
      return querySnapshot.docs
          .map((docSnap) => PlaylistModel.fromSnapshot(docSnap))
          .toList();
    });
  }

  //* Delete Playlist
  Future<void> deleteSinglePlaylist(
      UserEntity userEntity, String documentId) async {
    firestore
        .collection("UserMobileAuth")
        .doc(userEntity.deviceId)
        .collection("UserPlaylistM3U")
        .doc(documentId)
        .delete();
  }

  // Future<void> addPlaylist(PlaylistModel playlistModel) async {
  // firestore
  //     .collection("UserMobileAuth").
  // }

  // Future<PlaylistModel> getUserMobileAuth(String mac) async {
  // DocumentSnapshot getUserSnapShot =
  //     await firestore.collection("UserMobileAuth").doc(mac).get();
  // return PlaylistModel.fromSnapshot(getUserSnapShot);
  // }

  // Future<bool> isUserExist(String macAddress) async {
  //   DocumentSnapshot isUserExist =
  //       await firestore.collection("UserMobileAuth").doc(macAddress).get();
  //   if (isUserExist.exists) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
