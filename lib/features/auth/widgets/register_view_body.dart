import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:trendify/core/widgets/custom_button.dart';
import 'package:trendify/features/auth/presentation/views/login_view.dart';
import 'package:trendify/features/auth/widgets/custom_text_field.dart';
import 'package:trendify/features/auth/widgets/join_or_not_join_text.dart';
import 'package:trendify/features/auth/widgets/title_and_subtitle.dart';
import 'custom_snack_bar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                const TitleAndSubtitle(title: 'Sign Up',
                  subtitle: 'Join us today! Fill in your details below.',),
                SizedBox(height: 40.h,),
                CustomTextField(
                  controller: nameController,
                  labelText: 'Name', hintText: 'Enter Your Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },),
                SizedBox(height: 20.h,),
                CustomTextField(
                  labelText: 'Email', hintText: 'Enter Your Email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
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
                    onTap: () {
                      isObscureText = !isObscureText;
                      setState(() {});
                    },
                    child: isObscureText ? const Icon(
                        Icons.visibility_off_outlined) :
                    const Icon(Icons.visibility_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 50.h,),
                CustomButton(
                  buttonText: 'Register',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      SnackBar snackBar = buildSnackBar(
                          message: 'registered successfully');
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      SnackBar snackBar = buildSnackBar(
                          message: 'Please fill in all fields');
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
    );
  }
}
