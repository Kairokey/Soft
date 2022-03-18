import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Constants/imagesPathes.dart';
class splashScreen extends StatelessWidget {
  final Widget? nextScreen;
  const splashScreen({Key? key,this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AnimatedSplashScreen(
        backgroundColor: Colors.green,

        duration: 3000,
        nextScreen: nextScreen!,
        splash: LayoutBuilder(
          builder:(context,cons)=> Center(
            child: Container(
              height:900,
              width: 800,
              child: Image(image: AssetImage(logoPath),fit: BoxFit.fitWidth,color: Colors.white,),
            ),
          ),
        ),
      ) ,

    );
  }
}
