
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
}

var student1 = Student("Aleyna Mandacı")




