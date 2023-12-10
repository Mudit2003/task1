import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  // final String uId;
  final String name;
  final Timestamp date;
  final String location;
  final String bloodType;
  final String gender;
  final bool isAvailableForDonation;
  final String image;
  final int phoneNumber;

  Person({
    required this.phoneNumber,
    required this.isAvailableForDonation,
    this.image = "assets/images/person.jpeg",
    required this.gender,
    // required this.uId,
    required this.name,
    required this.date,
    required this.location,
    required this.bloodType,
  });

  Person.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot)
      : name = documentSnapshot.data()['name'],
        date = documentSnapshot.data()['dateofbirth'],
        gender = documentSnapshot.data()['gender'] ? "Male" : "Female",
        bloodType = documentSnapshot.data()['bloodgroup'],
        location = '',
        isAvailableForDonation = documentSnapshot.data()['donor'],
        image = "assets/images/person.jpeg",
        phoneNumber = documentSnapshot.data()['phone-number'];
}
