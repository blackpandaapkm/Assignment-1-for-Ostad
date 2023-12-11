// A. Define an interface named Role
// Declare a method void displayRole()
// to be implemented by classes that represent different roles (Student, Teacher).

abstract class Role {
  void displayRole();
}

// B. Create a class Person
// Include attributes for name, age, and address.
// Include a reference to the Role interface.
// Provide a constructor and getter methods for the attributes.
// Implement the Role interface methods.

class Person implements Role {
  String name;
  int age;
  String address;

  Role role;
  Person(this.name, this.age, this.address, this.role);

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  void displayRole() {
    role.displayRole();
  }
}

// C. Create a class Student that extends Person
// Include additional attributes for studentID, grade, and a list to store courseScores.
// Provide a constructor to initialize attributes.
// Override the displayRole() method to display "Role: Student".
// Implement a method to calculate the average score of courses.

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;


  Student(String name , int age, String address, this.studentID, this.grade, this.courseScores) :
        super(name, age, address, RoleStudent());

  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore() {
    double totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}

// D. Create another class Teacher that extends Person
// Include an attribute for teacherID and an array to store coursesTaught.
// Provide a constructor to initialize attributes.
// Override the displayRole() method to display "Role: Teacher".
// Implement a method to display the courses taught by the teacher.

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught = [];


  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      :super(name, age, address, RoleTeacher());


  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// E. Create a class StudentManagementSystem
// In the main method, create instances of Student and Teacher classes.
// Set the attributes using appropriate methods.
// Use the displayRole() method to display the role of each person.
// This extended scenario incorporates interfaces to provide role-based behavior for students and Teachers.

class StudentManagementSystem {
  static void main() {

    var student = Student('John Doe', 20, '123 Main St', 'studentid', 'A+', [90, 85, 82]);
    var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', 'teacherid',['Math', 'English', 'Bangla']);

    print('Student Information:');
    student.displayRole();
    print('Name: ${student.getName()}');
    print('Age: ${student.getAge()}');
    print('Address: ${student.getAddress()}');
    print('Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}');

    print('\nTeacher Information:');
    teacher.displayRole();
    print('Name: ${teacher.getName()}');
    print('Age: ${teacher.getAge()}');
    print('Address: ${teacher.getAddress()}');
    teacher.displayCoursesTaught();
  }
}

class RoleStudent implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

class RoleTeacher implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

void main() {
  StudentManagementSystem.main();
}
