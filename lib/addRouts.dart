

import 'package:flutter/material.dart';
import 'package:online_shop/Presntation/Dialougs/homeScreen.dart';
import 'package:online_shop/Presntation/Dialougs/signUp.dart';
import 'package:online_shop/Presntation/Dialougs/splach.dart';

import 'Constants/Screens.dart';
import 'Presntation/Dialougs/signIn.dart';
class AppRoute
{


  Route? onGenterateRoute(RouteSettings routeSettings)
  {
    switch(routeSettings.name)
    {
      case SplashPath:
        return MaterialPageRoute(builder: (_)=>splashScreen(nextScreen: signIn(),));
      case SignInPath:
        return MaterialPageRoute(builder: (_)=>signIn());
      case SignupPath:
        return MaterialPageRoute(builder: (_)=>SignUp());
      case homePath:
        return MaterialPageRoute(builder: (_)=>Home());

    }
  }


}