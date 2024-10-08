import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:trendify/core/widgets/custom_button.dart';
import 'package:trendify/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:trendify/features/auth/presentation/views/login_view.dart';
import 'package:trendify/features/auth/widgets/custom_text_field.dart';
import 'package:trendify/features/auth/widgets/join_or_not_join_text.dart';
import 'package:trendify/features/auth/widgets/title_and_subtitle.dart';
class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});
  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}
class _RegisterViewBodyState extends State<RegisterViewBody> {
  bool isObscureText = true;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name , email , password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  SizedBox(height: 60.h,),
                  const TitleAndSubtitle(title: 'Sign Up',
                    subtitle: 'Join us today! Fill in your details below.',),
                  SizedBox(height: 40.h,),
                  CustomTextField(
                    onSaved: (value){
                      name = value!;
                    },
                    controller: nameController,
                    labelText: 'Name', hintText: 'Enter Your Name',
                    ),
                  SizedBox(height: 20.h,),
                   CustomTextField(
                     onSaved: (value){
                       email = value!;
                     },
                    controller: emailController,
                    labelText: 'Email', hintText: 'Enter Your Email',
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
                      onTap: () {
                        isObscureText = !isObscureText;
                        setState(() {});
                      },
                      child: isObscureText ? const Icon(
                          Icons.visibility_off_outlined) :
                      const Icon(Icons.visibility_outlined),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  CustomTextField(
                    controller: confirmPasswordController,
                    isObscureText: isObscureText,
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Your Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        isObscureText = !isObscureText;
                        setState(() {});
                      },
                      child: isObscureText ? const Icon(
                          Icons.visibility_off_outlined) :
                      const Icon(Icons.visibility_outlined),
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  CustomButton(
                    buttonText: 'Register',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.read<RegisterCubit>().createUserWithEmailAndPassword(email, password, name);
                      } else {
                        setState(() {
                        });
                        autovalidateMode = AutovalidateMode.always;
                      }},
                  ),
                  SizedBox(height: 12.h,),
                  JoinOrNotJoinText(
                    text: ' Already Joined us? ',
                    text2: 'Sign In', onTap: () {
                    Navigator.pushNamed(context, LoginView.routeName);
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
