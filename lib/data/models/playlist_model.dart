import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/playlist_enity.dart';

class PlaylistModel extends PlaylistEntity {
  PlaylistModel({
    final String? playlistName,
    final String? playlistUrl,
    final Timestamp? addedDate,
    final String? playlistDocumentId,
  }) : super(
          playlistName: playlistName,
          playlistUrl: playlistUrl,
          playlistDocumentId: playlistDocumentId,
          addedDate: addedDate,
        );

  factory PlaylistModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return PlaylistModel(
      playlistName: documentSnapshot.get('playlistName'),
      playlistUrl: documentSnapshot.get('playlistUrl'),
      addedDate: documentSnapshot.get('addedDate'),
      playlistDocumentId: documentSnapshot.get('playlistDocumentId'),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "playlistName": playlistName,
      'playlistUrl': playlistUrl,
      'addedDate': addedDate,
      'playlistDocumentId': playlistDocumentId,
    };
  }
}
