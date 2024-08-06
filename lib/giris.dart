

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proje/anasayfa.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
            Container(
         constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/otel1.jpeg"), fit: BoxFit.cover))

          ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 500) ,
                  child: Column(
              
                    children: [
                      Center(
                        child:ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(backgroundColor:Colors.indigo , ),
                          onPressed: () async{
                             var user = await GoogleSignIn().signIn();
                           if (user != null) {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const anasayfaPage()));
                                 }
                          }, icon:const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.email,size: 30,color:Colors.white,),
                          ),
                        label: const SizedBox(width:220, child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text('Sign in with Email',style: TextStyle(color:Colors.white,),),
                        ))),
                        
                      ),
                      const Padding(padding: EdgeInsets.all(8.0)),
                       Center(
                         child:ElevatedButton.icon(
                           style: ElevatedButton.styleFrom(backgroundColor: Colors.white, ),
                           onPressed: () async {
                            await FacebookAuth.instance.login();  
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  const anasayfaPage()));
                                                                               }, icon:const Padding(
                             padding: EdgeInsets.all(5.0),
                             child: Icon(Icons.facebook,size: 30,color:Colors.blue ,),
                           ),
                         label: const SizedBox(width:220, child: Padding(
                           padding: EdgeInsets.symmetric(horizontal: 30),
                           child: Text('Sign in Facebook',style: TextStyle(color:Colors.blue,),),
                         ))),
                        
                      ),
                    ],
                  ),
                )
            
              ] 
            ),
        ),
        )
      ],
    );
  }
}


