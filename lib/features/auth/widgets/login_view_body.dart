import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:trendify/core/widgets/custom_button.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 24.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Form(
            key:  formKey,
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                const TitleAndSubtitle(title: 'Sign In', subtitle: 'Welcome back! Please log in to continue.',),
                SizedBox(height: 40.h,),
                 CustomTextField(
                  controller: emailController,
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                   validator: (value ) {
                     if (value == null || value.isEmpty) {
                       return 'Please enter your email';
                     }if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                       return 'Enter a valid email';
                     }
                     return null;
                   },),
                SizedBox(height: 20.h,),
                CustomTextField(
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
                  ), validator: (value ) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  }
                ),
                SizedBox(height: 50.h,),
                 CustomButton(
                  buttonText: 'Sign In',
                  onPressed: (){
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomeView.routeName);
                    }
                  },

                ),
                SizedBox(height: 12.h,),
                 JoinOrNotJoinText(
                   text: 'Don\'t have an account?',
                   text2: 'SignUp',onTap: (){
                     Navigator.pushNamed(context, RegisterView.routeName);
                 },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
