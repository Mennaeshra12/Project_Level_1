import 'package:flutter/material.dart';

import '../app_colors.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.hint, required this.icon});
  final TextEditingController controller ;
  final String hint ;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hint,
          filled: true,
          fillColor: AppColors.text,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.text
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.primary
              )
          )
      ),
    );
  }
}
