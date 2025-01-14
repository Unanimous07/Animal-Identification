import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText, 
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      
      
      child: TextField(
        controller: controller,
        obscureText: obscureText,
          decoration: InputDecoration(
                   contentPadding: const EdgeInsets.symmetric(
                    vertical: 25.0,
                    horizontal: 10.0,
                  ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey.shade200,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                  color: Color.fromARGB(255, 122, 119, 119),
                  
              )))),
    );
  }
}
