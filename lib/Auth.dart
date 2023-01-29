
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alan_voice/alan_voice.dart';
import 'SignUpScreen.dart';
import 'CreditCard.dart';
import 'LoginScreen.dart';

class Auth extends StatelessWidget{
  const Auth({super.key});
Widget build(BuildContext context){
  return Scaffold(
body: StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  builder: ((context,snapshot){
    if(snapshot.hasData){
      return CreditCard();


    } else{
      return LoginScreen();

  }

  }

),
),

  );

}
}


