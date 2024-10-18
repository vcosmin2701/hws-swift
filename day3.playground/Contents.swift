import Foundation

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

struct Student {
    let name: String
    let testScore: Int
}

let students = [
    Student(name: "user1", testScore: 23),
    Student(name: "user2", testScore: 65),
    Student(name: "eser13", testScore: 53),
    Student(name: "ufser41", testScore: 32),
    Student(name: "usfer124", testScore: 12),
    Student(name: "userf32", testScore: 99)
]

// (any parameter function takes in) -> (return type)
var topStudentFilter: (Student) -> Bool = { student in
    return student.testScore > 80
}

// comparasion with a function
func topStudent(student: Student) -> Bool {
    return student.testScore > 80
}

let topStudents = students.filter(topStudentFilter)

for student in topStudents {
    print(student.name)
}

// shorthand syntax , trailing closure syntax

let topStudents1 = students.filter { student in
    return student.testScore > 80
}

let topStudents2 = students.filter {
    $0.testScore > 80
}

