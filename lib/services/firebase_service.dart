import "package:cloud_firestore/cloud_firestore.dart";

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsers() async {
  List users = [];
  CollectionReference collectionReferenceUsers = db.collection('users');

  QuerySnapshot queryUsers = await collectionReferenceUsers.get();

  queryUsers.docs.forEach((documento) { 
    users.add(documento.data());
  });



  return users;
}