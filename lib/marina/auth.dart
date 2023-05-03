import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User {
  final String uid;

  User({required this.uid});
}
class AuthBase{

  User _userfromfirebase(firebaseUser user){
    return User(uid: user.uid);
  }
  Future<User> registerWithEmailAndPassword(
      String email, String password) async{
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email,  password: password);
    return _userfromfirebase(authResult.user );
  }

  Future<User> LoginWithEmailAndPassword(String email, String password) async{
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email,  password: password);
    return _userfromfirebase(authResult.user );
  }

  Future<void> Logout() async {
    await FirebaseAuth.instance.signOut();
  }
}

