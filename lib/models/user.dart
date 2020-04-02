import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String uid;
  User({this.uid});
}

class UserData{
  final String uid;
  final String name;
  final String email;

  UserData({this.uid,this.name,this.email});

  Map<String,dynamic> toJson()=>{
    'name':name,
    'email':email
  };

  //UserData.fromSnapshot(DocumentSnapshot snapshot):
  //  fname=snapshot['fname'],
  // lname=snapshot['lname'];
}

class UserRepository{
  final String uid;

  UserRepository({this.uid});

  final CollectionReference userCollection=Firestore.instance.collection("users");

  Future<void> updateUser(UserData data) async {
    return await userCollection.document(uid).setData(data.toJson());
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      email: snapshot.data['email']
    );
  }

  Stream<UserData> get userData {
    return userCollection.document(uid).snapshots()
      .map(_userDataFromSnapshot);
  }

}