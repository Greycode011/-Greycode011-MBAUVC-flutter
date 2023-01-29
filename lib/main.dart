import 'dart:convert';
import 'dart:math';
import 'package:credit_card_animation/Auth.dart';

import 'LoginScreen.dart';
import 'package:animate_do/animate_do.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:credit_card_animation/model/card_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Credit Card Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "ocr-a",
      ),
      home: Auth(),
    );
  }
}

