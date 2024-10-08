

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendify/features/auth/domain/repos/auth_repo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo): super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(String email, String password,) async
  {
   emit(LoginLoading());
   final result = await authRepo.signInWithEmailAndPassword(email, password,);
    result.fold((failure)=> emit(LoginError(failure.message)),
                (userEntity) => emit(LoginSuccess(userEntity: userEntity)));
}}