
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trendify/core/errors/firebase_err/custom_exceptions.dart';

import 'package:trendify/core/errors/firebase_err/failures.dart';
import 'package:trendify/core/service/firebase_auth_service.dart';
import 'package:trendify/features/auth/data/models/user_model.dart';

import 'package:trendify/features/auth/domain/entities/user_entity.dart';

import '../../domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password ,String name)async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
       return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message,),);
  }catch (e){
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',);
      return Left(ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى'));
    }
    }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(String email, String password) async{
    try{
      var user = await firebaseAuthService.signInWithEmailAndPassword(email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e){
      return left(ServerFailure(e.message));
    }catch (e){
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
     return left(ServerFailure('an error occurred, please try again later'));
    }

  }

  
}