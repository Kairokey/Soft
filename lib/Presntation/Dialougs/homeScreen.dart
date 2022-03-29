import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Presntation/Dialougs/CartView.dart';
import 'package:online_shop/Presntation/Dialougs/settings.dart';


import 'FavScreen.dart';
import 'HomeView.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  List Views=[
    HomeView(),
    CartScreen(),FavScreen(),SettingsScreen()
  ];
  GlobalKey<ScaffoldState> key=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Center(
            child: InkWell(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,

                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage("assets/images/R.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(height: 4,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Hello",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Muhammed Abdo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    SizedBox(height: 5,),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.home,color: Colors.lightGreen,size: 25,),
                      ),
                      SizedBox(width:8 ,),
                      Text( "Home",style: TextStyle(fontSize: 12),)
                    ],),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.shopping_cart,color: Colors.lightGreen,size: 25,),
                        SizedBox(width:8 ,),
                        Text( "My Orders",style: TextStyle(fontSize: 12),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.phone_in_talk,color: Colors.lightGreen,size: 25,),
                        SizedBox(width:8 ,),
                        Text( "About Us ",style: TextStyle(fontSize: 12),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.feedback,color: Colors.lightGreen,size: 25,),
                        SizedBox(width:8 ,),
                        Text( "Send FeedBack",style: TextStyle(fontSize: 12),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.share_outlined,color: Colors.lightGreen,size: 25,),
                        SizedBox(width:8 ,),
                        Text( "Share This App",style: TextStyle(fontSize: 12),)
                      ],),
                    ),
                  ],),
                )),
          ),
        ),
        key: key,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value)
          {
            setState(()
            {
              index=value;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.cyanAccent,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: 'Cart'),
            BottomNavigationBarItem(icon:Icon(Icons.favorite),label: 'Favorite'),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings'),

          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  InkWell(
                      onTap:(){
                        key.currentState!.openDrawer();
                      },
                      child: Icon(Icons.menu,size: 35)),
                  Spacer(),
                  Container(
                      child: Row(
                        children: [

                        ],
                      )),
                ],
              ),
            ),
            Expanded(child: Views[index])
          ],
        ),

      ),
    );
  }
}
