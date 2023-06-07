import 'package:flutter/material.dart';
import 'package:student_api/controllers/studentController.dart';
import 'package:student_api/services/student_services.dart';

class CreateStudent extends StatefulWidget {
  const CreateStudent({Key? key}) : super(key: key);

  @override
  State<CreateStudent> createState() => _CreateStudentState();
}

class _CreateStudentState extends State<CreateStudent> {
  final _createStudentForm = GlobalKey<FormState>();


  final firstname = StudentController.firstname;
  final lastname = StudentController.lastname;
  final course = StudentController.course;
  final score = StudentController.score;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Registration",
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.mic_rounded),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            color: Colors.white,
            focusColor: Colors.red,
            hoverColor: Colors.green,
            highlightColor: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Create Student",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Form(
                  key: _createStudentForm,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "First Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 18),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Enter Your FirstName",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "The Filed is Required";
                                }
                                return null;
                              },
                              controller: firstname,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Last Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 18),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Enter Your LastName",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "The Filed is Required";
                                }
                                return null;
                              },
                              controller: lastname,
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Course",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 18),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Enter a course's Name",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "The Filed is Required";
                                }
                                return null;
                              },
                              controller: course,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Score",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                                decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 18),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Enter Your Score",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "The Filed is Required";
                                }
                                return null;
                              },
                              controller: score,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Checkbox(
                              checkColor: Colors.pinkAccent,
                              value: false,
                              onChanged: null),
                          Text(
                            "I agree to this Terms,Data Policy and cookies Policy.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                        width: 160,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: Colors.pinkAccent,
                            ),
                            onPressed: () async {
                              if (_createStudentForm.currentState!.validate()) {
                                await createStudent(firstname.text,
                                    lastname.text, course.text, score.text);
                                Navigator.pushNamed(context, "/studentsList");
                              }
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I have already an account",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.pinkAccent, fontSize: 15),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "/login");
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
