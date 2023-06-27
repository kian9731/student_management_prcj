import 'package:flutter/material.dart';
import 'package:student_api/services/student_services.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [],
      )
    );
  }

  createItem(context, firstName) {
      return Container(
        height: 40,
        width: 200,
        color: Colors.pinkAccent,
        margin: EdgeInsets.all(20),
        child: Text(firstName),
      );
    }


}
