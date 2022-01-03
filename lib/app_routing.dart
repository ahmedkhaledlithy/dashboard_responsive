import 'package:dashboard_responsive/constants.dart';
import 'package:dashboard_responsive/ui/main/main_screen.dart';
import 'package:flutter/material.dart';

class AppRouting{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case mainScreen:
        return MaterialPageRoute(builder: (_)=>const MainScreen());

    }
  }
}
