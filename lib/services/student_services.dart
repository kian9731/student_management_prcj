import 'package:dio/dio.dart';
import 'package:student_api/models/student.dart';

Future<List<Student>>  getStudents() async {

  List<Student> studentsList = [];
  
  Dio dio = Dio(BaseOptions(baseUrl: "http://expertdevelopers.ir/api/v1/"));
  final res = await dio.get("experts/student");

  if (res.data is List) {
    for (var item in res.data) {
      Student std = Student.fromJson(item);
      studentsList.add(std);
    }
  }
  return studentsList;
}


Future<Student> createStudent(firstName, lastName, course, score) async{

  Student std;

      Dio dio=Dio(BaseOptions(baseUrl: "http://expertdevelopers.ir/api/v1/"));
      var data= Student.toJson(null,firstName,lastName, course,score);
  final response= await dio.post("experts/student",data: data);
print(response);
  if(response.statusCode==200){
       std= Student.fromJson(response.data);
  }else{
    throw Exception();
  }

  return std;
}
