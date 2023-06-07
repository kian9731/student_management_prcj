class Student{
  final int id;
  final String firstName;
  final String lastName;
  final String course;
  final int score;

  Student(this.id, this.firstName, this.lastName, this.course, this.score);

  Student.fromJson(Map<String, dynamic> data):
    id=data["id"],
    firstName=data["first_name"],
    lastName=data["last_name"],
    course=data["course"],
    score=data["score"];

  static toJson(id,firstName,lastName,course,score){
    return {
      "id": id,
      "first_name":firstName,
      "last_name":lastName,
      "course":course,
      "score":score,
    };
  }

}