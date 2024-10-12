import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendify/core/helper/build_error_bar.dart';
import '../../../core/widgets/custom_progress_hud.dart';
import '../presentation/cubits/login_cubit/login_cubit.dart';
import '../presentation/cubits/login_cubit/login_state.dart';
import 'login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {}
        if (state is LoginError) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is LoginLoading ? true : false,
            child: const LoginViewBody());
      },
    );
  }
}
