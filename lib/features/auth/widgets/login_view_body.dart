import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:trendify/core/widgets/custom_button.dart';
import 'package:trendify/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:trendify/features/auth/presentation/views/register_view.dart';
import 'package:trendify/features/auth/widgets/custom_text_field.dart';
import 'package:trendify/features/auth/widgets/join_or_not_join_text.dart';
import 'package:trendify/features/auth/widgets/title_and_subtitle.dart';
import 'package:trendify/features/home/presentation/views/home_view.dart';


class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email , password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 24.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Form(
              key:  formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h,),
                  const TitleAndSubtitle(title: 'Sign In', subtitle: 'Welcome back! Please log in to continue.',),
                  SizedBox(height: 20.h,),
                  Image.asset('assets/images/loginimg.png'),
                  SizedBox(height: 40.h,),
                   CustomTextField(
                     onSaved: (value){
                       email = value!;
                     },
                    controller: emailController,
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                     ),
                  SizedBox(height: 20.h,),
                  CustomTextField(
                    onSaved: (value){
                      password = value!;
                    },
                    controller: passwordController,
                    isObscureText: isObscureText,
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    suffixIcon: GestureDetector(
                      onTap: (){
                        isObscureText = !isObscureText;
                        setState(() {

                        });
                      },
                      child: isObscureText ? const Icon(Icons.visibility_off_outlined) :
                      const Icon(Icons.visibility_outlined),
                    ),
                  ),
                  SizedBox(height: 50.h,),
                   CustomButton(
                    buttonText: 'Sign In',
                    onPressed: (){
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.read<LoginCubit>().signInWithEmailAndPassword(email, password);
                        Navigator.pushNamed(context, HomeView.routeName);
                      }else{
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },

                  ),
                  SizedBox(height: 12.h,),
                   JoinOrNotJoinText(
                     text: 'Don\'t have an account?',
                     text2: 'Sign Up',onTap: (){
                       Navigator.pushNamed(context, RegisterView.routeName);
                   },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
