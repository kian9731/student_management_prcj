import 'package:flutter/material.dart';
import 'package:student_api/services/student_services.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students List"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 160,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.blue,
                    backgroundColor: Colors.lightBlue
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/createStudent");
                },
                child:const Text("Create a Student",style: TextStyle(
                  color: Colors.white , fontSize: 17,
                ),)),
          ),
          FutureBuilder(
            future: getStudents(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        20,
                            (index) => createItem(context, snapshot.data![index].firstName),
                      ),
                    ),
                  ),
                );
              }
              else if(snapshot.hasError){
                return Center(child:Text(snapshot.error.toString()));
              }
              else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
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
