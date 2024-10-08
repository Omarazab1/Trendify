import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, required this.labelText, required this.hintText, this.isObscureText, this.suffixIcon, this.hintStyle, this.controller, this.onSaved});
  final String labelText;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  //final Function(String?) validator;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText ,
        //labelStyle: TextStyle(color: AppColors.kLightBlue),
        hintText: hintText,
        hintStyle:hintStyle,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder:  const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        suffixIcon: suffixIcon,
        fillColor: AppColors.kLightGreyColor,
      ),
      obscureText: isObscureText ?? false,
      controller: controller,
      validator: (value){
        if (value == null || value.isEmpty) {
          return 'Please enter $labelText';
        }
        return null;
      },
       onSaved: onSaved,

    );
  }
}
