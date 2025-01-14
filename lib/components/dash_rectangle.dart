import 'package:flutter/material.dart';

class DashRectangle extends StatelessWidget {
    final String text;
  final double theight;

  const DashRectangle({
    super.key, 
    required this.text,
    required this.theight,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: theight,
      width: 200,
      decoration: BoxDecoration(
        
        border: Border.all( color: Colors.white,),
        borderRadius: BorderRadius.circular(8),
        color:const  Color(0xFF23D498),

      ),
      child: Center(
        child: Text(
          text, 
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            
            fontFamily: "Cholcolate",
            
            
          ),
        ),
      )
    );
  }
}