import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task1/common/modals/blood_bank.dart';
import 'package:task1/common/modals/person.dart';

class CloudService {
  // creation of a singleton class
  static final CloudService _shared = CloudService._sharedInstance();
  CloudService._sharedInstance();
  factory CloudService() => _shared;

  // for each collection retrieval
  final user = FirebaseFirestore.instance.collection('persons');
  final bloodBank = FirebaseFirestore.instance.collection('blood-bank');

  Future<Person> getUser({required String id}) async {
    return (await user
            .where('uid', isEqualTo: id)
            .get()
            .then((value) => value.docs.map((e) => Person.fromJson(e))))
        .first;
  }

  Future<Iterable<Person>> getAllUser() async {
    try {
      print("Waiting to fetch all user: ${user.hashCode}");
      return await user
          .get()
          .then((value) => value.docs.map((e) => Person.fromJson(e)));
      print("All user fetced");
    } on Exception catch (e) {
      print("Error: $e");
      rethrow;
    }
  }

  Future<Iterable<BloodBank>> getAllBloodBank() async {
    try {
      return await bloodBank
          .get()
          .then((value) => value.docs.map((e) => BloodBank.fromJson(e)));
    } on Exception catch (e) {
      print("Error: e");
      rethrow;
    }
  }
}
