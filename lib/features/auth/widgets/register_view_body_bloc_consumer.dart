import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:trendify/features/auth/widgets/register_view_body.dart';

import '../../../core/helper/build_error_bar.dart';
import '../presentation/cubits/register_cubit/register_cubit.dart';
import '../presentation/cubits/register_cubit/register_state.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
        //  Navigator.of(context).pop();
        }
        if(state is RegisterError){
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is RegisterLoading ? true : false,
            child: const RegisterViewBody());
      },
    );
  }


}