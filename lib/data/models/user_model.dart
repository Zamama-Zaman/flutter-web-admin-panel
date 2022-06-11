import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:duplex_pro_web_app_dashboard/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    final String? deviceId,
    final String? deviceKey,
    final Timestamp? installedTime,
    final Timestamp? activationEndAt,
    final String? firebaseId,
  }) : super(
          deviceId: deviceId,
          deviceKey: deviceKey,
          installedTime: installedTime,
          activationEndAt: activationEndAt,
          firebaseId: firebaseId,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    return UserModel(
      deviceId: documentSnapshot.get('deviceId'),
      deviceKey: documentSnapshot.get('deviceKey'),
      installedTime: documentSnapshot.get('installedTime'),
      activationEndAt: documentSnapshot.get('activationEndAt'),
      firebaseId: documentSnapshot.get('firebaseId'),
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'deviceId': deviceId,
      'deviceKey': deviceKey,
      'installedTime': installedTime,
      'activationEndAt': activationEndAt,
      'firebaseId': firebaseId,
    };
  }
}
