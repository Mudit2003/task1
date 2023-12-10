import 'package:cloud_firestore/cloud_firestore.dart';

class BloodBank {
  final String name;
  final String location;
  final String distance;

  BloodBank({
    required this.name,
    required this.location,
    required this.distance,
  });

  BloodBank.fromJson(
      QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot)
      : name = documentSnapshot.data()['name'],
        location = '',
        distance = '';
}
