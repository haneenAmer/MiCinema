import 'package:flutter/material.dart';
import 'package:micinema/screens/splash_screen.dart';
import '../constants/strings.dart';

class AppRouter {
  Route? generateRout (RouteSettings settings){
    switch (settings.name){
      case splashScreen : return MaterialPageRoute(builder: (_)=>SplashScreen());

    }
  }
}