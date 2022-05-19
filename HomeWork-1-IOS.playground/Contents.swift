
// enum for lectures
enum lectureName : String {
    case math , physics , geometry , chemistry

    func lecture() -> String {
            switch self {
            case .math:
                return "Math"
            case .physics:
                return "Physics"
            case .geometry:
                return "Geometry"
            case .chemistry:
                return "Chemistry"
            }
        }
}

class Student {
    var nameSurname : String

    init (_ nameSurname : String){
        self.nameSurname = nameSurname
    }
    
    // func for calculate grade average
    func gradeAverage (lectureName : lectureName , midterm : Int?, final : Int?) -> Float {
            var result = 0
        
            if let midtermValue = midterm {
                result += midtermValue*30
            }
            if let finalValue = final {
                result += finalValue*70
            }
            return Float(result)/100
        }
}

var student1 = Student("Aleyna Mandacı")
var student2 = Student("Ali Yılmaz")
var student3 = Student("Mehmet Er")

// dictionary for students and their garde average
var gradeList : [String : [String : Float]] = [
    student1.nameSurname : [
        lectureName.chemistry.lecture() :
            student1.gradeAverage(lectureName: .chemistry, midterm: 67, final: 43) ,
        lectureName.physics.lecture() :
            student1.gradeAverage(lectureName: .physics, midterm: 39, final: 78)
    ],
    
    student2.nameSurname : [
        lectureName.geometry.lecture() :
            student2.gradeAverage(lectureName: .geometry, midterm: nil, final: 86) ,
        lectureName.math.lecture() :
            student2.gradeAverage(lectureName: .math, midterm: 53, final: 56)
    ],
    
    student3.nameSurname : [
        lectureName.physics.lecture() :
            student3.gradeAverage(lectureName: .physics, midterm: 94, final: 73)
    ]
]

// mathGrades array
var mathGrades : [Float] = [student1.gradeAverage(lectureName: .math, midterm: 40, final: 50)]

mathGrades.append(student3.gradeAverage(lectureName: .math, midterm: nil, final: 100))
mathGrades.insert(student2.gradeAverage(lectureName: .math, midterm: 39, final: 72), at: 1)

//function for success of the class in the lecture
func passCounterForMath () -> String {
    var passCounter = 0
    var leftoverCounter = 0

    for grade in mathGrades {
        if grade >= 60 {
            passCounter += 1
        }else{ leftoverCounter += 1 }
    }
    return "Matematik dersinden \(passCounter) kişi geçti, \(leftoverCounter) kişi kaldı."
}
passCounterForMath()



