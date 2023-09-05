import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Firebase/firebase_auth.dart';

class AuthController extends GetxController{
 // Login method
  Future<UserCredential?> loginMethod({email, password, context}) async{
    UserCredential? userCredential ;

    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch (e){

      VxToast.show(context, msg: e.toString());

    }
    return userCredential; 
  }
  // SignUp Method
  Future<UserCredential?> SinginMethod({email, password, context}) async{
    UserCredential? userCredential ;

    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch (e){

      VxToast.show(context, msg: e.toString());

    }
    return userCredential;
  }
  // storeing data method
  storeUserData({name, password, email}) async{
    DocumentReference store = await firestore.collection(UserCollection).doc(currentUser!.uid);
    store.set({
      'Name' : name,
      'Password' : password,
      'Email' : email,
      'ImageUrl' : ''
    });
  }
  // signout method
  signOutMethod (context, ) async{
    try{
      await auth.signOut();
    }
        catch (e){
      VxToast.show(context, msg: toString());

        }
  }
}