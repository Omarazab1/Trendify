import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendify/core/di/injection.dart';
import '../../domain/repos/auth_repo.dart';
import '../../widgets/register_view_body_bloc_consumer.dart';
import '../cubits/register_cubit/register_cubit.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
   static const String routeName = '/registerView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        getIt<AuthRepo>(),
      ),
      child:  const Scaffold(
        body:  RegisterViewBodyBlocConsumer(),
      ),
    );
  }
}


