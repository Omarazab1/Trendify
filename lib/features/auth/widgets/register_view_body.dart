import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:trendify/core/widgets/custom_button.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 24.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Column(
            children: [
              SizedBox(height: 60.h,),
              const TitleAndSubtitle(title: 'Sign Up', subtitle: 'Join us today! Fill in your details below.',),
              SizedBox(height: 40.h,),
              const CustomTextField(labelText: 'Name', hintText: 'Enter Your Name',),
              SizedBox(height: 20.h,),
              const CustomTextField(labelText: 'Email', hintText: 'Enter Your Email',),
              SizedBox(height: 20.h,),
              CustomTextField(
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
              SizedBox(height: 20.h,),
              CustomTextField(
                isObscureText: isObscureText,
                labelText: 'Confirm Password',
                hintText: 'Confirm Your Password',
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
              const CustomButton(buttonText: 'Register',),
              SizedBox(height: 12.h,),
              JoinOrNotJoinText(
                text: ' Already Joined us? ',
                text2: 'Sign In',onTap: (){
                Navigator.pushNamed(context, LoginView.routeName);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
