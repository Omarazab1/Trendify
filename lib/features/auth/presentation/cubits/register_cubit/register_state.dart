import '../../../domain/entities/user_entity.dart';

abstract class RegisterState{}

class RegisterInitial extends RegisterState{}

class RegisterLoading extends RegisterState{}

class RegisterSuccess extends RegisterState{
  final UserEntity userEntity;
  RegisterSuccess({required this.userEntity});
}
class RegisterError extends RegisterState {
  final String message;
  RegisterError(this.message);
}