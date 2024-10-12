import 'package:dartz/dartz.dart';
import 'package:trendify/core/errors/firebase_err/failures.dart';
import 'package:trendify/features/home/domain/entities/home_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure,HomeEntity>> fetchHomeData();
}