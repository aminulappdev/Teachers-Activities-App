import 'package:cse/Notice/upload.dart';
import 'package:cse/pages/fetch_data.dart';
import 'package:cse/pages/options_page.dart';
import 'package:cse/pages/teachers_page.dart';
import 'package:cse/pages/views.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBIe0ERVP9Q5f4nJVkX67XTwRGdKBl3deE",
          authDomain: "teachers-activities.firebaseapp.com",
          projectId: "teachers-activities",
          storageBucket: "teachers-activities.appspot.com",
          messagingSenderId: "179679952844",
          appId: "1:179679952844:web:bc701523fa7689c354e769"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Option_page(),
    );
  }
}
