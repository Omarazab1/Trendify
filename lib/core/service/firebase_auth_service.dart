import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

import '../errors/firebase_err/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email,required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'email address is already in use.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'check your internet connection.');
      } else {
        throw CustomException(
            message: 'an error occurred, please try again later.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");

      throw CustomException(
          message: 'an error occurred, please try again later.');
    }

     }

     Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
       try {
         final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
         return credential.user!;
       } on FirebaseAuthException catch (e) {
         log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
         if (e.code == 'user-not-found') {
           throw CustomException(
               message: 'password or email is incorrect.');
         } else if (e.code == 'wrong-password') {
           throw CustomException(
               message: 'password or email is incorrect.');
         } else if (e.code == 'network-request-failed') {
           throw CustomException(message: 'network request failed.');
         } else {
           throw CustomException(
               message: 'an error occurred, please try again later.');
         }
       } catch (e) {
         log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
         throw CustomException(
             message: 'an error occurred, please try again later.');
       }
     }

  }
