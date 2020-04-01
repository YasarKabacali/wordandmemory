import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String uid;
  User({this.uid});
}

class UserData{
  String uid;
  String fname;
  String lname;

  UserData({this.uid,this.fname,this.lname});

  Map<String,dynamic> toJson()=>{
    'fname':fname,
    'lname':lname,
  };

  UserData.fromSnapshot(DocumentSnapshot snapshot):
    fname=snapshot['fname'],
    lname=snapshot['lname'];
}

class UserRepository{
  final String uid;

  UserRepository({this.uid});

  final CollectionReference userCollection=Firestore.instance.collection("users");

  Future<void> updateUser(UserData data) async {
    return await userCollection.document(uid).setData(data.toJson());
  }

}