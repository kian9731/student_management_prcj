import 'package:flutter/material.dart';
import 'package:student_api/models/student.dart';
import 'package:student_api/screens/create_student.dart';
import 'package:student_api/screens/student_page.dart';
import 'package:student_api/services/student_services.dart';

void main() {

  // createStudent("Mahsa", "Amini", "Azadi", 200);
  List<int> numbers1= [10, 20, 30];
  // print (numbers1);
  Map<String, int> numbers2= {
    "Math":10,
    "art": 20,
    "physices": 30
  };
  // print(numbers2);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: StudentPage(),
      routes:{
        "/studentsList": (context)=> StudentPage(),
        "/createStudent": (context)=> CreateStudent(),

      },
    );
  }
}


