import 'faculty.dart';
import 'student.dart';

class University {
  final List<Faculty> faculties;

  University({required this.faculties});

  Faculty? getFacultyByName(String name) {
    return faculties.firstWhere((faculty) => faculty.name == name);
  }

  void addStudent(Student student) {
    final faculty = getFacultyByName(student.faculty);
    if (faculty != null) {
      faculty.students.add(student);
    } else {
      throw Exception("Faculty not found");
    }
  }

  double getOverallAverageScore() {
    if (faculties.isEmpty) return 0.0;
    return faculties
        .map((faculty) => faculty.averageScore)
        .reduce((a, b) => a + b) /
        faculties.length;
  }
}
