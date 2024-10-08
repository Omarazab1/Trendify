import 'package:trendify/features/auth/domain/entities/user_entity.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final UserEntity userEntity;
  LoginSuccess({required this.userEntity});
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}