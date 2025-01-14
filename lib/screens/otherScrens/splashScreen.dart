import 'package:animalide/screens/animals/animal_identification.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset('assets/images/white.png'),
      nextScreen: const AnimalIdentification(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRight,
      backgroundColor: const Color(0xFF23D498),
    );
  }
}