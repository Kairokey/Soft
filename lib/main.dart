import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/addRouts.dart';
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(shop());
  
}
class shop extends StatelessWidget {
  const shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute().onGenterateRoute,
    );
  }
}
