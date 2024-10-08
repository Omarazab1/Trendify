import 'package:dartz/dartz.dart';
import 'package:trendify/features/auth/domain/entities/user_entity.dart';

import '../../../../core/errors/firebase_err/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> createUserWithEmailAndPassword( String email, String password , String name);
  Future<Either<Failure,UserEntity>> signInWithEmailAndPassword( String email, String password);
}