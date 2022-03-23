import 'package:flutter/material.dart';
import 'package:online_shop/Data/auth.dart';

import '../../Constants/imagesPathes.dart';
import '../widgets/customSign.dart';
class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
GlobalKey<FormState>Fkey=GlobalKey<FormState>();

String?email;

String?password;

TextEditingController cEmail=TextEditingController();
TextEditingController cPass=TextEditingController();
TextEditingController cPass2=TextEditingController();


Auth  auth=Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          SingleChildScrollView(),
          Center(

            child: Container(
                height:200,
                width:200,
                child: Image.asset(SignImage,)),
          ),
          Center(child: Text("Welcome Back !",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
          SizedBox(height: 2,),
          Form(
            key: Fkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: CustomSign(

                    controller: cEmail,
                    name:'Email',hint: 'Enter your Email',secure: false,sufix: false,icons: Icons.email,
                  onSaved: (v)
                    {
                   setState(() {
                     password=v;
                   });
                    },

                 validator: (v)
                    {
                      if(v.toString().isEmpty)
                        {
                          return "please Enter Email";
                        }
                        },
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 9.0),
                  child: CustomSign(
                    controller: cPass,
                    name:'Password',hint: 'Enter your Password',secure: true,sufix: true,icons: Icons.lock_outline,
                    onSaved:(v)
                    {
                      setState(() {
                        password=v;
                      });
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
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: CustomSign(
                    controller: cPass2,
                    name:'Resset Password',hint: 'Enter your Password',secure: true,sufix: true,
                    icons: Icons.lock_outline,
                    onSaved:(v)
                  {
                 setState(() {

                   password=v;
                 });
                  }
                    ,
                    validator: (v)
                    {
                      if(v.toString().isEmpty)
                      {
                        return "please Enter Password";
                      }
                      else if(cPass!=cPass2)
                        {
                          return"please Enter correct pass";
                        }
                    },),
                ),

              ],
            ),
          ),
          SizedBox(height:20,),
          InkWell(
            onTap: () async
            {
              Fkey.currentState!.save();
              await auth.signUp(cEmail.text, cPass.text);
              if(Fkey.currentState!.validate())
                {


           // await auth.signUp('abdelwahab@gmail.com', 'sasasasa');


                }
            },
            child: Container(
              height: 60,
              width:350,
              child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
           ],
      ),
    );
  }
}
