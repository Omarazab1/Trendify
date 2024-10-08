import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../domain/repos/auth_repo.dart';
import '../../widgets/login_view_body_bloc_consumer.dart';
import '../cubits/login_cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "loginView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        getIt<AuthRepo>(),
      ),
      child:  const Scaffold(
        body:  LoginViewBodyBlocConsumer(),
      ),
    );
  }
}


