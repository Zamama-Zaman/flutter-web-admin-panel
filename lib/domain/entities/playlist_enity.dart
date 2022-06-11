import 'package:cloud_firestore/cloud_firestore.dart';

class PlaylistEntity {
  final String? playlistName;
  final String? playlistUrl;
  final Timestamp? addedDate;
  final String? playlistDocumentId;

  PlaylistEntity({
    this.playlistName,
    this.playlistUrl,
    this.addedDate,
    this.playlistDocumentId,
  });
}
