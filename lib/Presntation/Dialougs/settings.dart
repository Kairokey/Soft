import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';
import 'package:switcher_button/switcher_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SetingsScreenState();
}

class _SetingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SingleChildScrollView(),
        Column(children: [
          Container(
            height: 50,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                BackButton(),
                SizedBox(width: 20,),
                Text("Settings", style: TextStyle(color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(logoPath)),
            ),
          ),
          SizedBox(height: 2,),
          Text("Muhammed Abdo", style: TextStyle(color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold),),
          Text("Muhammed Abdo@gmail.com", style: TextStyle(color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold),),
          SizedBox(height: 3,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
              },
              child: Row(children: [
                Text("Account Information", style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios, size: 25, color: Colors.lightGreen,)
              ],),
            ),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Address Information", style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 25, color: Colors.lightGreen,)
            ],),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell
              (
              onTap: () {
                _ShowMessageDialog(context);
              },
              child: Row(children: [
                Text("Language", style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios, size: 25, color: Colors.lightGreen,)
              ],),
            ),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Recalculate Bmr ", style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 25, color: Colors.lightGreen,)
            ],),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Dark Mode", style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
              Spacer(),
              SwitcherButton(
                offColor: Colors.grey,
                onColor: Colors.black,
                value: true,
                onChange: (value) {
                  print(value);
                },
              )
            ],),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Log Out  ", style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 25, color: Colors.lightGreen,)
            ],),
          ),
          Divider(color: Colors.grey[200], thickness: 2,),
        ],),
      ],
    );
  }

  _ShowMessageDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) =>
          AlertDialog(
            title: Text("Language"),
            actions: [
              FlatButton(onPressed: () => Navigator.of(context).pop(),
                  child:InkWell(
                      onTap: (){
                      },
                      child: const Text("English"))),
              FlatButton(onPressed: () => Navigator.of(context).pop(),
                  child:InkWell(
                      onTap: ()
                      {
                      },
                      child: const Text("Arabic")))

            ],

          ));
}
