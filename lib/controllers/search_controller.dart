import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:moments_capture/constants.dart';
import 'package:moments_capture/models/user.dart';

class SearchController extends GetxController {
  final Rx<List<User>> _searchedUsers = Rx<List<User>>([]);

  List<User> get searchedUsers => _searchedUsers.value;

  searchUser(String searchUser) async {
    _searchedUsers.bindStream(firestore
        .collection('users')
        .where('name', isGreaterThanOrEqualTo: searchUser)
        .snapshots()
        .map((QuerySnapshot query) {
      List<User> returnVal = [];
      for (var elem in query.docs) {
        returnVal.add(User.fromSnap(elem));
      }
      return returnVal;
    }));
  }
}
