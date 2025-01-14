import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  final double theight;

  const SquareTile({
    super.key,
    required this.imagepath,
    required this.theight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all( color: Colors.white,),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagepath,
        height: theight,
      ),
    );
  }
}
