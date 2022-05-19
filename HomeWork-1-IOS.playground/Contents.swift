
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




