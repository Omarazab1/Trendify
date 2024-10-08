import 'package:flutter/material.dart';
import 'package:trendify/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // This makes the button take the full width of the screen
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16), // Text color
          backgroundColor: AppColors.kPrimaryColor, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
