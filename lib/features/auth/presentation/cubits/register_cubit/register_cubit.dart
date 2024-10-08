

 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendify/features/auth/presentation/cubits/register_cubit/register_state.dart';

import '../../../domain/repos/auth_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());
  final AuthRepo authRepo ;

  Future<void> createUserWithEmailAndPassword(String email, String password,String name) async
  {
    emit(RegisterLoading());
    final result = await authRepo.createUserWithEmailAndPassword(email, password,name);
    result.fold(
        (failure)=> emit(RegisterError(failure.message)),
        (userEntity) => emit(RegisterSuccess(userEntity: userEntity)),
    );
  }
}