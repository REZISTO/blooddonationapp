import 'package:blooddonationapp/pages/add.dart';
import 'package:blooddonationapp/pages/home.dart';
import 'package:blooddonationapp/pages/update.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

 Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/add':(context) =>AddUser(),
        '/update':(context) => UpdateDonor(),
      },
      initialRoute: '/',
    );
  }
}
