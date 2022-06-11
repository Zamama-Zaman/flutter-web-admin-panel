import 'package:cloud_firestore/cloud_firestore.dart';

class UserEntity {
  final String? deviceId; //* MacAddress of Phone
  final String? deviceKey; //* Android Id of Phone
  final Timestamp? installedTime;
  final Timestamp? activationEndAt;
  final String? firebaseId; //* Firebase Collection Id

  UserEntity({
    this.deviceId,
    this.deviceKey,
    this.installedTime,
    this.activationEndAt,
    this.firebaseId,
  });
}
