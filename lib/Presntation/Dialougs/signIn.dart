import 'package:flutter/material.dart';
import 'package:online_shop/Constants/Screens.dart';

import '../../Constants/imagesPathes.dart';
import '../widgets/customSign.dart';
class signIn extends StatelessWidget {
   signIn({Key? key}) : super(key: key);
GlobalKey<FormState>formkey=GlobalKey<FormState>();
String? email;
String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Column(
         children: [
           Center(

             child: Container(
                 height:200,
                 width:200,
                 child: Image.asset(SignImage,)),
           ),
           Center(child: Text("Welcome Back !",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
           SizedBox(height: 2,),
        Form(
          key:formkey ,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child:Align(
                        alignment: Alignment.topCenter,
                        child: Text("Stay signed in with your account to make searching easier",style: TextStyle(fontSize:14),))),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: CustomSign(name:'Email',hint: 'Enter your Mail',secure: false,sufix: false,icons: Icons.email_outlined,
                   onSaved: (v)
                      {
                email=v;
                     },

               validator: (v)
                    {
                   if(v.toString().isEmpty)
                   {
                    return "please Enter Email";
                  }
                      },
                  ),),

                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: CustomSign(name:'Password',hint: 'Enter your Password',secure: true,sufix: true,icons: Icons.lock_outline,
                    onSaved:(v)
                    {
                      password=v;
                    }
                    ,
                    validator: (v)
                    {
                      if(v.toString().isEmpty)
                      {
                        return "please Enter Password";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Spacer(),
                      Text("Forgot password?",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

              ],
            ),
        ),
           InkWell(
             onTap: (){
               Navigator.pushNamed(context, homePath);
             },
             child: Container(
               height: 60,
               width:350,
               child: Center(child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
               decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(20)
               ),
             ),
           ),
           SizedBox(height:10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Dont Have any Acount?",style: TextStyle(color: Colors.black,fontSize: 18),),
               InkWell(
                   onTap: (){
                     Navigator.pushNamed(context, SignupPath);
                   },
                   child: Text(" Sign Up",style: TextStyle(color: Colors.green,fontSize: 19,fontWeight: FontWeight.bold),)),
             ],
           ),

         ],
       ),
    );
  }
}
